package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class First {
	
	@RequestMapping("/")
  public String Test() {
	  return "index";
  }
	
}
