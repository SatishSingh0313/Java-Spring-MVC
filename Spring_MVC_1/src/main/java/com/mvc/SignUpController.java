package com.mvc;

import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.*;

@Controller
public class SignUpController {

	
	@RequestMapping("/contact")
	public String contact() {
		
		return "sinup";
	}
	
	@RequestMapping(path="/proccess",method = RequestMethod.GET)
	public String handleFormData( 
		@RequestParam("userName") String user_Name,
		@RequestParam("userEmail") String user_Email,
		@RequestParam("userPassword") String user_Password,
		Model model) {
		
		System.out.println("Your Name is :"+ user_Name);
		System.out.println("Your Email Id is :"+ user_Email);
		System.out.println("Your Password is :"+ user_Password);
		
		model.addAttribute("un",user_Name);
		model.addAttribute("ue",user_Email);
		model.addAttribute("up",user_Password);
		
		return "success";
	}
	
	@RequestMapping(path="/proccess" ,method = RequestMethod.POST)
	public String handleData(@ModelAttribute User user , Model model)
	{
		System.out.println(user);
		
		model.addAttribute("u",user.getName());
		model.addAttribute("e");
		model.addAttribute("p",user.getPassword());
		
		return "success";
	}
}
