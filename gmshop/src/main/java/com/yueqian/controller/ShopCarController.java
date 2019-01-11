package com.yueqian.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yueqian.dao.entity.Shopcar;
import com.yueqian.service.ShopCarService;

@Controller
@RequestMapping("/shopcar")
public class ShopCarController {

	@Autowired
	private ShopCarService shopCarService;

	@RequestMapping("/showcar")
	public ModelAndView findByUid(Long id) {
		ModelAndView mav = new ModelAndView();
		if (id == null) {
			mav.setViewName("login");
		} else {
			List<Shopcar> shopcars = shopCarService.findAllByUid(id);
			mav.addObject("cars", shopcars);
			mav.setViewName("buy");
		}
		return mav;
	}

	@RequestMapping("/addcar")
	public String addCar(Long uid, Long pid) {
		if (uid == null) {
			return "redirect:/userController/login";
		} else {
			Shopcar shopcar = new Shopcar();
			shopcar.setProductId(pid);
			shopcar.setUid(uid);
			int i = shopCarService.insert(shopcar);
			if (i > 0) {
				return "redirect:showcar?id=" + uid;
			} else {
				return "redirect:/productController/findByid?id=" + pid;
			}
		}
	}

	@RequestMapping("/delcar")
	public String delcar(Long id, Long uid) {

		int i = shopCarService.deleteByPrimaryKey(id);
		if (i > 0) {
			return "redirect:showcar?id=" + uid;
		} else {
			return "redirect:showcar?id=" + uid;
		}
	}

}
