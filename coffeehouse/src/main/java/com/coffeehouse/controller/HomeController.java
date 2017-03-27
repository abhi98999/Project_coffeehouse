package com.coffeehouse.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController 
{
	 @RequestMapping("/")
	    public String home(){
	        return "index";
	        }
	 
	 @RequestMapping("/index")
	    public String home1(){
	        return "index";
	        }
	 @RequestMapping("/aboutus")
	 public String about()
	 {
		 
		 return "aboutus";
	 }
	 
	 
	 
	 @RequestMapping("/contact")
	 public String contactus()
	 {
		 return "contact";
	 }

}
