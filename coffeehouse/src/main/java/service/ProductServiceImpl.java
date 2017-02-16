package service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ProductDAO;
import model.Product;

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
