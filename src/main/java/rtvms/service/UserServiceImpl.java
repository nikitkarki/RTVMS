package rtvms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rtvms.dao.UserDao;
import rtvms.model.User;
import rtvms.model.UserCredential;

@Service("userService")
public class UserServiceImpl implements UserService{
	private UserDao userDao;
	
	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<User> getUser(String searchString) {
		return userDao.getUsers(searchString);
	}

	public Boolean registerUser(User user) {
		return userDao.registerUser(user);
	}

	public int loginUser(UserCredential userCredential) {
		return userDao.loginUser(userCredential);
	}
	
}
