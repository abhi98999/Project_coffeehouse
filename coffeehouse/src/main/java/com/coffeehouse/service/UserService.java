package com.coffeehouse.service;


import java.util.List;

import com.coffeehouse.model.User;

public interface UserService {

	public void addUser(User p);
	User getUserByEmailId(String email);
	User getUserById(String id);
	List<User> getAllUser();
}
