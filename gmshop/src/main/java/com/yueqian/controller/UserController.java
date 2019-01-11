package com.yueqian.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.lambdaworks.crypto.SCryptUtil;
import com.yueqian.dao.entity.User;
import com.yueqian.service.IUserService;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private IUserService userService;

	@RequestMapping("/showUser")
	public String getUserById(String id, HttpSession session) {
		User user = userService.getById(Long.parseLong(id));
		session.setAttribute("user", user);
		return "showUser";
	}

	@RequestMapping("/login")
	public String login(String loginName, String pass, Model model, HttpSession session) {
		User inUser = new User();
		inUser.setLoginName(loginName);
		User user = userService.login(inUser);
		if (user != null) {
			String realpass = user.getPass();
			System.out.println(realpass);
			boolean b = SCryptUtil.check(pass, realpass);
			System.out.println(b);
			if (SCryptUtil.check(pass, realpass)) {
				User user2 = userService.getById(user.getId());
				session.setAttribute("user", user2);
				return "login_success";
			} else {
				model.addAttribute("msg", "账号密码错误");
				return "redirect:/login.jsp";
			}
		} else {
			model.addAttribute("msg", "账号密码错误");
			return "redirect:/login.jsp";
		}

	}

	@RequestMapping("/register")
	public String register(User user, @RequestParam("image") CommonsMultipartFile upload, HttpSession session)
			throws IllegalStateException, IOException {
		System.out.println(user);

		// 通过session得到上传到服务器上的路径
		String serverPath = session.getServletContext().getRealPath("upload");
		String imgPath = upload.getOriginalFilename(); // 重命名为全球唯一的文件名 .jgp
		String extendsName = imgPath.substring(imgPath.lastIndexOf("."), imgPath.length());
		String onlyName = UUID.randomUUID().toString();
		String onlyFileName = onlyName + extendsName;
		upload.transferTo(new File(serverPath, onlyFileName));

		user.setUserImg(onlyFileName);

		String year = user.getNyear();
		String month = user.getNmonth();
		String day = user.getNday();
		String dateStr = year + "-" + month + "-" + day;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		try {
			Date bornDay = sdf.parse(dateStr);
			user.setBornDay(bornDay);
			String pass = user.getPass();
			String password = SCryptUtil.scrypt(pass, 16, 16, 16);
			System.out.println(password);
			user.setPass(password);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		int row = userService.add(user);
		if (row > 0) {
			session.setAttribute("user", user);
			return "redirect:/register_success.jsp";
		} else {
			return "redirect:/register.jsp";
		}

	}

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

}
