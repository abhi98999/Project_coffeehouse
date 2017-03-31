package com.coffeehouse.controller;


import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.session.HttpSessionCreatedEvent;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.coffeehouse.model.Product;
import com.coffeehouse.service.ProductService;
import com.google.gson.Gson;
@Controller
public class ProductController {
    
	private Product product;
	ProductService productService;
	@Autowired(required=true)
//@Qualifier(required=true)
	public void setProductService(ProductService productService) {
		
		this.productService = productService;
	}
	
@RequestMapping(value="/productdescription")
public ModelAndView pd(@ModelAttribute("product") Product p)
{	System.out.println("hello");
	ModelAndView mv=new ModelAndView("productdescription");
	this.product=p;
	return mv;
}

@RequestMapping(value = "/product/{description}", method = RequestMethod.GET)
public ModelAndView userProduct(@PathVariable("description") String category ,  Model model) {
	 model.addAttribute("listProduct", productService.getAllProducts());

  List<Product> filteredlist = new ArrayList<Product>();
  List<Product> list = productService.getAllProducts();
  Iterator<Product> i = list.iterator();
  while (i.hasNext()) {
         Product p = (Product) i.next();
         if (p.getCategory().equals(category)) {
                filteredlist.add(p);
         }
  }
  for(Product p:filteredlist)
  {
	System.out.println(p.getProductId());
	System.out.println(p.getProductName());
	 
  }
  String json = new Gson().toJson(filteredlist);
  ModelAndView mv = new ModelAndView("userproduct");
  mv.addObject("product",json);
  return mv;
}




}
 	



 