package com;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("This is a help Controller");
		
		// Creating ModelAndView
		ModelAndView modelAndView=new ModelAndView();
		
		//Setting the data
		modelAndView.addObject("name", "Satish Singh");
		modelAndView.addObject("id", 101);
		LocalDateTime localDateTime= LocalDateTime.now();
		modelAndView.addObject("time", localDateTime);
		
		//Students Marks
		
		List<Integer> list=new ArrayList<Integer>();
		list.add(95);
		list.add(80);
		list.add(70);
		
		modelAndView.addObject("marks",list);
		
		//Setting the page
		modelAndView.setViewName("help");
		return modelAndView;
	}

}