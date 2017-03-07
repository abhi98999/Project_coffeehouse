package com.coffeehouse.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.coffeehouse.model.User;
@Repository
public class UserDAOImpl implements UserDAO
{

		private SessionFactory sessionFactory;
		
		
		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}


		public void addUser(User u) {
			Session sf=sessionFactory.getCurrentSession();
			sf.persist(u);
		}

		
}
