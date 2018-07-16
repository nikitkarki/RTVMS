package rtvms.service;

import java.util.List;

import rtvms.model.User;

public interface UserService {
	public List<User> getUser(String searchString);
}
