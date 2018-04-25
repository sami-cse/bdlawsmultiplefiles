package com.sami.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sami.model.Act;
import com.sami.model.FileUpload;
import com.sami.model.Product;
import com.sami.repository.ActRepository;
import com.sami.repository.FileUploadRepository;

@Controller
public class FileuploadController {

	@Autowired
	FileUploadRepository fileUploadRepository;

	@Autowired
	ActRepository actRepository;

	static FileUpload fileUploadObj;
	static String saveDirectory = "/opt/servletFileUpload/";
	private static final String ABS_PATH = "/home/sami/STS/projects/bdlawsmultiplefiles/src/main/webapp/assets/images/";
	static String actId;
	static ModelAndView modelViewObj;

	@RequestMapping("/")
	public String showUploadFileForm() {
		return "fileupload";
	}

	@RequestMapping(value = "uploadFile", method = RequestMethod.POST)
	public ModelAndView multipleFileUpload(HttpServletRequest request,
			final @RequestParam CommonsMultipartFile[] attachFileObj) throws IllegalStateException, IOException {

		actId = request.getParameter("actId");

		if ((attachFileObj != null) && (attachFileObj.length > 0) && (!attachFileObj.equals(""))) {
			for (CommonsMultipartFile file : attachFileObj) {
				if (file.isEmpty()) {
					continue;
				}
				if (!file.getOriginalFilename().isEmpty()) {
					BufferedOutputStream outputStream = new BufferedOutputStream(
							new FileOutputStream(new File(ABS_PATH, file.getOriginalFilename())));
					fileUploadObj = new FileUpload();
					fileUploadObj.setFileName(file.getOriginalFilename());
					fileUploadObj.setAct(actId);
					fileUploadRepository.save(fileUploadObj);
					outputStream.write(file.getBytes());
					outputStream.flush();
					outputStream.close();
				}
			}
		}
		modelViewObj = new ModelAndView("success", "messageObj", "The File(s) Is Successfully Uploaded!");
		return modelViewObj;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("/{id}")
	public ModelAndView manageProductEdit(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("edit");
		mv.addObject("product", fileUploadRepository.findOne(id));
		return mv;

	}

	@RequestMapping(value = "/p", method = RequestMethod.POST)
	public String managePostProduct(@Valid @ModelAttribute("product") FileUpload mProduct, BindingResult results,
			Model model, HttpServletRequest request) {

		if (mProduct.getId() == 0) {
			new FileValidator().validate(mProduct, results);
		} else {
			// edit check only when the file has been selected
			if (!mProduct.getFile().getOriginalFilename().equals("")) {
				new FileValidator().validate(mProduct, results);
			}
		}

		if (mProduct.getId() == 0) {
			fileUploadRepository.save(mProduct);
		} else {
			fileUploadRepository.save(mProduct);
		}
		
		FileUtil.u(request, mProduct.getFile(), mProduct.getFileName());
	
		return "redirect:/";
	}
	
}






