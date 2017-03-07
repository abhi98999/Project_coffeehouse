package com.coffeehouse.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.coffeehouse.model.Product;
import com.coffeehouse.model.User;
import com.coffeehouse.service.ProductService;
import com.coffeehouse.service.UserService;
@Controller
public class UserController {
	
	UserService userService;
	@Autowired(required=true)
//@Qualifier(required=true)
	public void setUserService(UserService userService) {
		
		this.userService = userService;
	}
	
	@RequestMapping("/register")	
	 public String registerpage()
	 {
		return "register";
	 }
	
	
	@RequestMapping(value= "/registerUser" )
	public ModelAndView registerUser(@Valid @ModelAttribute("user") User u,BindingResult result)
	{
		if(result.hasErrors()){
			ModelAndView mv=new ModelAndView("register");
			return mv;
		}
		else{
		userService.addUser(u);
		ModelAndView mv=new ModelAndView("/");
		return mv;}
	}
	




}


