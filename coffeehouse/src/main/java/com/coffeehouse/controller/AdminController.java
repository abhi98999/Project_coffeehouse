package com.coffeehouse.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.coffeehouse.model.Product;
import com.coffeehouse.service.ProductService;

@Controller
public class AdminController {

	
	ProductService productService;
	@Autowired
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	

@RequestMapping("/admin/adminProduct")	
 public ModelAndView productPage(Model model)
 {
	ModelAndView mv=new ModelAndView("product");
	mv.addObject("product",new Product());
	model.addAttribute("listProduct", this.productService.getAllProducts());

	return mv;
	
 }
	
	
	
	@RequestMapping(value="admin/adminP", method=RequestMethod.POST)
 	public String insertProduct(@Valid @ModelAttribute("product") Product p, BindingResult result,Model model,HttpServletRequest request)
 	{
 		if(result.hasErrors())
		{   
			System.out.println("error");
			model.addAttribute("listProduct", this.productService.getAllProducts());
			return "redirect:/product";
	}
		else{
		if(p.getProductId()==0)
		{
		productService.addProduct(p);
		MultipartFile file=p.getImage();
		String filelocation=request.getSession().getServletContext().getRealPath("/resources/images/");
		System.out.println(filelocation);
		String filename=filelocation+"\\"+p.getProductId()+".jpg";
		System.out.println(filename);
		
		try{
			byte b[]=file.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
	    	}
		catch(IOException ex){}
		catch(Exception e){}
			}	
		else{
			System.out.println("product is updating");
		productService.updateProduct(p);		
			}
	return "redirect:/admin/adminProduct";
		}	
		
	}
	

	@RequestMapping("/delete/{id}")
	String deleteProduct(@PathVariable("id") int id)
			{
			productService.removeProduct(id);
			return "redirect:/admin/adminProduct";			}
    		
	@RequestMapping("/edit/{id}")
	public String updateProduct(@PathVariable("id") int id, Model model)
	{
		System.out.println("update in controller"+id);
		model.addAttribute("product", this.productService.getProductById(id));
		model.addAttribute("listProduct",this.productService.getAllProducts());
		return "product";
	}
}	