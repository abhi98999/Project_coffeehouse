package com.coffeehouse.dao;

import java.util.List;

import com.coffeehouse.model.User;

public interface UserDAO {

	public void addUser(User u);
	User getUserByEmailId(String email);
	User getUserById(String id);
	List<User> getAllUser();
}
