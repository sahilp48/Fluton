package com.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.exceptions.InvalidField;
import com.model.Addresident;
import com.serviceimpl.AllMethods;

@Controller
public class FormController {

	Addresident addresident = new Addresident();
	AllMethods methods = new AllMethods();

	@RequestMapping(value = "/")
	public String first(Model model) {
		model.addAttribute("addresident", addresident);
		return "addresidentpage";

//		return "fileupload";
	}

	@RequestMapping(value = "/viewdata")
	public String viewFormData(@ModelAttribute("addresident") Addresident addresident, Model model,HttpServletRequest request) {
		
		int count = 0;
		
		String filePath = request.getServletContext().getRealPath("/resources/");
		String fileName = addresident.getPicture().getOriginalFilename();
		File file = null;
		
		try {
			model.addAttribute("addresident", addresident);

			MultipartFile multipartFile = addresident.getPicture();

			file = new File(filePath, fileName);
			multipartFile.transferTo(file);

			System.out.println("file path" + file.getPath());
			try {
				if (addresident.getPicture().getSize()>100000) {
					throw new InvalidField("Image size should be less than 100kb");
				}
			} 
			catch (InvalidField e) {		

				model.addAttribute("imgerrormessage", e.getMessage());
				count++;
			}
		} catch (IOException e ) {
			
		}
		
        return methods.validation(addresident ,model, count);
	}

	
	

@PostMapping(value = "viewdata", params = "reset")
	public String resetForm(Model model) {
		return "addresidentpage";
	}
	
}
