package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import service.ProductService;

public class ProductController {

	@Autowired
	ProductService productService;
	@RequestMapping("")
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}


	void addProduct()
	{
		
		
	}
	
}
