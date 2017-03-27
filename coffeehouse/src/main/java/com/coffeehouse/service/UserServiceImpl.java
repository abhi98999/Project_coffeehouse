package com.coffeehouse.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.coffeehouse.model.User;
import com.coffeehouse.dao.UserDAO;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	
		private UserDAO userDAO;
		
		public void setUserDAO(UserDAO userDAO) {
			this.userDAO = userDAO;
		}
		
		public void addUser(User u) {
			userDAO.addUser(u);
		}

		public User getUserByEmailId(String email) {
			return userDAO.getUserByEmailId(email);
		}

		public User getUserById(String id) {
			return userDAO.getUserById(id);
		}

		public List<User> getAllUser() {
			return userDAO.getAllUser();
		}
		

	
}
