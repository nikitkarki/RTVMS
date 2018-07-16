package rtvms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rtvms.dao.UserDao;
import rtvms.model.User;

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
	
}
