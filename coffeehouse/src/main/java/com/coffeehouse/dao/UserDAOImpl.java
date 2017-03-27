package com.coffeehouse.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.coffeehouse.model.Authorization;
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
			u.setActive(true);
			u.setUserName(u.getUserName());
			Authorization au=new Authorization();
			au.setRole("ROLE_USER");
			au.setUserName(u.getUserName());
			
			sf.persist(u);
			sf.persist(au);
		}


		public User getUserByEmailId(String email) {
			Session sf=sessionFactory.getCurrentSession();
			User u=(User)sf.get(User.class, email);
			
			return u;
		}


		public User getUserById(String id) {
			Session sf=sessionFactory.getCurrentSession();
			User u=(User)sf.get(User.class, id);
			
			return u;
		}


		public List<User> getAllUser() {
			Session sf=sessionFactory.getCurrentSession();
			Query q=sf.createQuery("from User");
			List<User> listUser=(List<User>)q.list();
			
			return listUser;
		}
		
		
}
