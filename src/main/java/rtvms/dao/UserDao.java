package rtvms.dao;

import java.util.List;

import rtvms.model.User;

public interface UserDao {
	public List<User> getUsers(String searchString);
	public Boolean registerUser(User user);
}
