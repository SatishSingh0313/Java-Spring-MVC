package com;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	
	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("This is a Home Page");
		model.addAttribute("name", "Satish");
		model.addAttribute("id", 101);
		
		List<String> friends=new ArrayList<String>();
		friends.add("Ankit");
		friends.add("Deepak");
		friends.add("Junaid");
		friends.add("Hitesh");
		
		model.addAttribute("fr", friends);
		return "index";
	}
	
	@RequestMapping("/about")
	public String about() {
		System.out.println("This is a About Page");
		return "about";
	}
	

}