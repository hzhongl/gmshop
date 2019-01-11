package com.yueqian.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yueqian.dao.entity.Category;
import com.yueqian.dao.entity.Product;
import com.yueqian.service.CategoryService;
import com.yueqian.service.IProductService;

@Controller
@RequestMapping("/index")
public class InitController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private IProductService productService;

	@RequestMapping("")
	public ModelAndView findCategoryParent(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Category> categories = categoryService.selectParent();
		List<Product> products = productService.selectIndex();
		for (Product product : products) {
			System.out.println(product);
		}
		session.setAttribute("category", categories);
		mav.addObject("product", products);
		mav.setViewName("/index");
		return mav;
	}

}
