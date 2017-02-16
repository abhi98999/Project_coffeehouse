package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import model.Product;
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

	

}
