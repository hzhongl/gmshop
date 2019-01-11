package com.yueqian.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yueqian.dao.entity.Category;
import com.yueqian.dao.entity.Image;
import com.yueqian.dao.entity.Product;
import com.yueqian.service.CategoryService;
import com.yueqian.service.IProductService;
import com.yueqian.service.ImageService;

@Controller
@RequestMapping("/productController")
public class ProductController {
	@Autowired
	private IProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ImageService imageService;

	@RequestMapping("/findProduct")
	public ModelAndView findProduct(@RequestParam(value = "pn", defaultValue = "1", required = false) Integer pn,
			Model model) {
		ModelAndView mav = new ModelAndView();
		List<Category> categories = categoryService.selectAll();
		mav.addObject("category", categories);
		PageHelper.startPage(pn, 5);
		List<Product> products = productService.SelectAll();
		PageInfo<Product> pageInfo = new PageInfo<>(products);
		// System.out.println(pageInfo);
		mav.addObject("page", pageInfo);
		mav.setViewName("/showProduct");
		return mav;
	}

	@RequestMapping("/toaddProduct")
	public String addProduct(Model model) {
		List<Category> categories = categoryService.selectAll();
		model.addAttribute("page", categories);
		return "back/add_product";

	}

	@RequestMapping("/addProduct")
	public String add(Product product, HttpServletRequest request, HttpSession session)
			throws IllegalStateException, IOException {
		// System.out.println(product);
		int rows = productService.insert(product);
		// System.out.println(product.getId());
		if (request instanceof MultipartHttpServletRequest) {
			MultipartHttpServletRequest multyRequest = (MultipartHttpServletRequest) request;
			String serverPath = session.getServletContext().getRealPath("upload");
			List<MultipartFile> uploads = multyRequest.getFiles("images");
			for (MultipartFile up : uploads) {
				Image image = new Image();
				String fileName = up.getOriginalFilename();
				String extendName = fileName.substring(fileName.lastIndexOf("."));
				String onlyName = UUID.randomUUID().toString() + extendName;
				File saveFile = new File(serverPath, onlyName);
				up.transferTo(saveFile);
				image.setProductId(product.getId());
				image.setUrl(onlyName);
				imageService.insert(image);
			}
		}

		if (rows > 0) {
			return "back/add_product";
		}
		return "back/add_product";
	}

	@RequestMapping("/findByid")
	public ModelAndView findProductByid(Long id) {
		ModelAndView mav = new ModelAndView();
		Product product = productService.selectByPrimaryKey(id);
		List<Image> images = imageService.selectByProduct(id);
		mav.addObject("images", images);
		mav.addObject("product", product);
		mav.setViewName("info");
		return mav;
	}

	@RequestMapping("/findProductByCategory")
	public ModelAndView findProductByCategory(Long id,
			@RequestParam(value = "pn", defaultValue = "1", required = false) Integer pn) {
		ModelAndView mav = new ModelAndView();
		PageHelper.startPage(pn, 3);
		List<Product> products = productService.SelectByCategory(id);
		PageInfo<Product> pageInfo = new PageInfo<>(products);
		for (Product product : pageInfo.getList()) {
			System.out.println(product);
		}
		mav.addObject("id", id);
		mav.addObject("page", pageInfo);
		mav.setViewName("catlist");
		return mav;

	}

}
