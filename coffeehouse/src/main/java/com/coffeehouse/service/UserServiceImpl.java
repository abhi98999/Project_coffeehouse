package com.coffeehouse.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.coffeehouse.model.User;
import com.coffeehouse.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService{

	
		private UserDAO userDAO;
		
		public void setUserDAO(UserDAO userDAO) {
			this.userDAO = userDAO;
		}
		
		@Transactional
		public void addUser(User u) {
			userDAO.addUser(u);
		}

		
	
}
