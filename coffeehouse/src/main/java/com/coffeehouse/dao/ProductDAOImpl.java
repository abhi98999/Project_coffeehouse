package com.coffeehouse.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.coffeehouse.model.Product;
@Repository
public class ProductDAOImpl implements ProductDAO

{
	private SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public void addProduct(Product p) {
		Session sf=sessionFactory.getCurrentSession();
		sf.persist(p);
	}
	
	public void removeProduct(int productId) {
		Session sf=this.sessionFactory.getCurrentSession();
		Product p=(Product)sf.load(Product.class,new Integer(productId));
        sf.delete(p);
        System.out.println("data deleted successfully="+p);
	}

	public void updateProduct(Product p) {
		Session sf=this.sessionFactory.getCurrentSession();
        sf.update(p);
        System.out.println("data updated successfully="+p);
	}

	public List<Product> getAllProducts() {
		Session sf=this.sessionFactory.getCurrentSession();
		System.out.println("in dao");
		Query q=sf.createQuery("from Product");
		List<Product>productList=(List<Product>)q.list();
		System.out.println("All product list");
		return productList;
	}

	public Product getProductById(int productId) {
		Session sf=this.sessionFactory.getCurrentSession();
		Product p=(Product) sf.get(Product.class,new Integer(productId));
		System.out.println("data of product by id="+p);
		return p;
	}
	

}