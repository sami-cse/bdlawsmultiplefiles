package com.sami.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sami.model.FileUpload;
import com.sami.model.Product;
import com.sami.repository.ProductRepository;

@Controller
@RequestMapping("/manage")
public class ManagementController {

	@Autowired
	private ProductRepository productRepository;

	@RequestMapping("/product")
	public ModelAndView manageProduct() {

		ModelAndView mv = new ModelAndView("manageProduct");
		Product nProduct = new Product();
		mv.addObject("product", nProduct);
		return mv;

	}

	@RequestMapping("/{id}/product")
	public ModelAndView manageProductEdit(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("manageProduct");
		mv.addObject("product", productRepository.findOne(id));
		return mv;

	}

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String managePostProduct(@Valid @ModelAttribute("product") Product mProduct, BindingResult results,
			Model model, HttpServletRequest request) {

		// mandatory file upload check
		if (mProduct.getId() == 0) {
			new ProductValidator().validate(mProduct, results);
		} else {
			// edit check only when the file has been selected
			if (!mProduct.getFile().getOriginalFilename().equals("")) {
				new ProductValidator().validate(mProduct, results);
			}
		}

		if (mProduct.getId() == 0) {
			productRepository.save(mProduct);
		} else {
			productRepository.save(mProduct);
		}
		if (!mProduct.getFile().getOriginalFilename().equals("")) {
			FileUtil.uploadFile(request, mProduct.getFile(), mProduct.getCode());
		}

		return "redirect:/manage/product";
	}

}
