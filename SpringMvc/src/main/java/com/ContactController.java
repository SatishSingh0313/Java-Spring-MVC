package com;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.User;
import com.service.UserService;

@Controller
public class ContactController {
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commonDataForm(Model m) {
		m.addAttribute("Header","Registration Form");
		m.addAttribute("Desc","Home For Programmer");
		System.out.println("Adding Common Data");
	}
	
	@RequestMapping("/contact")
	public String showForm() {
		System.out.println("Creating Form");
		return "contact";
	}
	
	@RequestMapping(path = "/processform", method=RequestMethod.POST)
	public String handleForm(@ModelAttribute("user") User user,Model model) {
		System.out.println(user);
		this.userService.createUser(user);
		return "success";
	}
}


/*
@RequestMapping(path = "/processform", method=RequestMethod.POST)
public String handleForm(
		@RequestParam("email") String userEmail, 
		@RequestParam("userName") String userName,
		@RequestParam("password") String userPassword, Model model) {
	
	System.out.println("User Email: "+userEmail);
	System.out.println("User Name: "+userName);
	System.out.println("User Password: "+userPassword);
	
	User  user = new User();
	user.setEmail(userEmail);
	user.setUserName(userName);
	user.setPassword(userPassword);
	System.out.println(user);
	
	//process 
	
//	model.addAttribute("email",userEmail);
//	model.addAttribute("userName",userName);
//	model.addAttribute("password", userPassword);
	
	model.addAttribute("user",user);
	
	return "success";
}

}
*/
