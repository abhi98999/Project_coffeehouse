package com.coffeehouse.service;



import java.util.List;

import com.coffeehouse.model.Product;

public interface ProductService {

	public void addProduct(Product p);
	void removeProduct(int productId);
	void updateProduct(Product p);
	List<Product> getAllProducts();
	Product getProductById(int productId);


}