package com.coffeehouse.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.coffeehouse.model.Product;
import com.coffeehouse.service.ProductService;
@Controller
public class ProductController {
    
	ProductService productService;
	@Autowired(required=true)
//@Qualifier(required=true)
	public void setProductService(ProductService productService) {
		
		this.productService = productService;
	}
	
@RequestMapping("/product")	
 public ModelAndView productPage()
 {
	ModelAndView mv=new ModelAndView("product");
	mv.addObject("product",new Product());
	return mv;
	
 }
 	@RequestMapping(value= "/addproduct" )
	public ModelAndView productadd(@ModelAttribute("product") Product p)
	{
		productService.addProduct(p);
		ModelAndView mv=new ModelAndView("/");
		return mv;
		
	}

}
