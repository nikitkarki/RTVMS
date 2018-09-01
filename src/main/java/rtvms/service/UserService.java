package rtvms.service;

import java.util.List;

import rtvms.model.User;
import rtvms.model.UserCredential;

public interface UserService {
	public List<User> getUser(String searchString);
	public Boolean registerUser(User user);
	public int loginUser(UserCredential userCredential);
}
