package rtvms.dao;

import java.util.List;

import rtvms.model.User;
import rtvms.model.UserCredential;

public interface UserDao {
	public List<User> getUsers(String searchString);
	public Boolean registerUser(User user);
	public int loginUser(UserCredential userCredential);
}
