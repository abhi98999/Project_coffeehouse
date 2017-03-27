package com.coffeehouse.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.coffeehouse.model.Product;
import com.coffeehouse.model.User;
import com.coffeehouse.service.ProductService;
import com.coffeehouse.service.UserService;
@Controller
public class UserController {
	
	UserService userService;
	User ulogin;
	@Autowired(required=true)
//@Qualifier(required=true)
	public void setUserService(UserService userService) {
		
		this.userService = userService;
	}
	
	@RequestMapping(value="/register")	
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
	
	@RequestMapping("/login")
	public ModelAndView loginPage(@RequestParam(value="error", required = false)
	String error,@RequestParam(value="logout", required = false)String logout,Model model)
	{
		model.addAttribute("ulogin",new User());
		if(error != null){
			model.addAttribute("error", "Invalid username and password");
			}

			if (logout !=null){
			model.addAttribute("msg", "You have been logged out successfully !!!!");
			}			
			return new ModelAndView("login");
	}

	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String loginPagePost(@Valid @ModelAttribute(""
			+ "") User u,BindingResult result,Model model,@RequestParam("id") int id)
	{ System.out.println("is going to login");
		String value=null;
		ulogin=u;
		if(result.hasErrors()){
			return "login";	
		}
		else{
			System.out.println("is going to login without error");
        List<User> userList = userService.getAllUser();
        for(User userL:userList)
        {
            if(ulogin.getUserName().equals(userL.getUserName())&& ulogin.getPassword().equals(userL.getPassword())){
                 value="user";
              }
            else
            	
            { System.out.println("not exits");
            	model.addAttribute("userpass","username and password does not exits");
            	value="index";
            }
        }
        return "redirect:/"+value;	
		}
}




}


