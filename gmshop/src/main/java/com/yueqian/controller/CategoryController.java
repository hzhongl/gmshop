package com.yueqian.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yueqian.dao.entity.Category;
import com.yueqian.service.CategoryService;

@Controller
@RequestMapping("categoryController")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/findCategory")
	public ModelAndView findCategory(@RequestParam(value = "pn", defaultValue = "1", required = false) Integer pn,
			Model model) {
		ModelAndView mav = new ModelAndView();
		PageHelper.startPage(pn, 5);
		List<Category> categories = categoryService.selectAll();
		PageInfo<Category> pageInfo = new PageInfo<>(categories);
		System.out.println(pageInfo);
		for (Category category : pageInfo.getList()) {
			System.out.println(category);
		}
		mav.addObject("page", pageInfo);
		mav.setViewName("/showCategory");

		return mav;
	}

	@RequestMapping("/toaddCategory")
	public String addCategory(Model model) {
		List<Category> categories = categoryService.selectAll();
		model.addAttribute("page", categories);
		return "back/add_category";

	}

	@RequestMapping("/addCategory")
	public String add(Category Category) {
		System.out.println(Category);
		int rows = categoryService.insert(Category);
		if (rows > 0) {
			return "back/add_category";
		}
		return "back/add_category";
	}

	@RequestMapping("/delCategory")
	public String del(Long id, HttpSession session) {
		Category category = categoryService.selectByPrimaryKey(id);
		System.out.println(category);
		if (category.getChrids().iterator().hasNext()) {
			session.setAttribute("msg", "已经有子类了");
		} else {
			int rows = categoryService.deleteByPrimaryKey(id);
			if (rows > 0) {
				session.setAttribute("msg", "删除成功");
				return "redirect:findCategory";
			}
		}
		return "redirect:findCategory";
	}

}
