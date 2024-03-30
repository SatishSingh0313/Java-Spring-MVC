package com;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
	
	@RequestMapping("/contact")
	public String showForm() {
		
		System.out.println("This is a Contact Page");
		return "contact";
	}
	
	@RequestMapping(path = "/processform", method=RequestMethod.POST)
	public String handleForm(
			@RequestParam("email") String userEmail, 
			@RequestParam("userName") String userName,
			@RequestParam("password") String userPassword, Model model) {
		
		System.out.println("User Email: "+userEmail);
		System.out.println("User Name: "+userName);
		System.out.println("User Password: "+userPassword);
		
		//process 
		
		model.addAttribute("email",userEmail);
		model.addAttribute("userName",userName);
		model.addAttribute("password", userPassword);
		
		return "success";
	}

}
