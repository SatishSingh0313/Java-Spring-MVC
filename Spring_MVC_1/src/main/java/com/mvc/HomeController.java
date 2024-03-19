package com.mvc;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Controller")
public class HomeController {
	
	@RequestMapping("/home")
   public String home(Model model) {
		model.addAttribute("name","Dinga");
		model.addAttribute("id",101);
		
		List<String> friends=new ArrayList<String>();
		friends.add("AK");
		friends.add("BK");
		friends.add("CK");
		friends.add("DK");
		model.addAttribute("f",friends);
		System.out.println("---Hello---");
	   return "index";
   }
	
	@RequestMapping("/about")
	   public ModelAndView about() {
		ModelAndView modelAndView =	new ModelAndView();
		modelAndView.addObject("id",125);
		modelAndView.addObject("name","Dinga");
		
		LocalDateTime ldt= LocalDateTime.now();
		modelAndView.addObject("time",ldt);
		modelAndView.setViewName("index2");
			System.out.println("Good Evening");
			return modelAndView;
		   
	   }
	@RequestMapping(path="/info",method = RequestMethod.GET)//it is used URL, for the controller method
	   public String info() {
			System.out.println("Good Evening");
		   return "index3";
	   }
	
}
