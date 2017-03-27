package com.coffeehouse.dao;



import java.util.List;

import com.coffeehouse.model.Product;

public interface ProductDAO {

	public void addProduct(Product p);
	void removeProduct(int productId);
	void updateProduct(Product p);
	List<Product> getAllProducts();
	Product getProductById(int productId);
}
