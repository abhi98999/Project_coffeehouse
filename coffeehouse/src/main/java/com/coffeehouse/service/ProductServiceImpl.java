package com.coffeehouse.service;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coffeehouse.dao.ProductDAO;
import com.coffeehouse.model.Product;

@Service
public class ProductServiceImpl implements ProductService{
	
	private ProductDAO productDAO;
	
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}
	
	@Transactional
	public void addProduct(Product p) {
		productDAO.addProduct(p);
	}

	
	

				
}