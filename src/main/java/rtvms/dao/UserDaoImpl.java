package rtvms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import rtvms.model.Address;
import rtvms.model.User;
import rtvms.model.UserCredential;

@Repository
public class UserDaoImpl implements UserDao{

	private JdbcTemplate jdbcTemplate;
	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public List<User> getUsers(String searchString) {
		List<User> userList = new ArrayList<User>();
		String[] fullName = searchString.split("\\s+");
		String sql= "select * from user_table where firstName like ? and lastName like ?";
		try {
			userList = jdbcTemplate.query(sql, new Object[] {fullName[0], fullName[1]}, new RowMapper<User>() {
				public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					User tempUser = new User();
					tempUser.setUserId(rs.getInt(1));
					tempUser.setFirstName(rs.getString(2));
					tempUser.setLastName(rs.getString(3));
					tempUser.setDateOfBirth(rs.getString(4));
					tempUser.setPhoneNo(rs.getString(5));
					tempUser.setAddress(new Address());
					return tempUser;
				}
			});
		} catch(Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	public Boolean registerUser(User user) {
		String insertSql= "insert into rtvms.user_table" +
					"(firstName,lastName,dateOfBirth,email,phoneNo,password,address) values (?,?,?,?,?,?,?)";
		try {
			jdbcTemplate.update(insertSql, new Object[] { user.getFirstName(), user.getLastName(), user.getDateOfBirth(),
					user.getEmail(), user.getPhoneNo(), user.getPassword(), 1});
			return true;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public int loginUser(UserCredential userCredential) {
		String selectSql = "select count(*) from rtvms.user_table where email = ? and password = ?"; 
//	+"'"  + userCredential.getUsername() + "'" + "and password=" + "'" +userCredential.getPassword() +"'";
		System.out.println(selectSql);
		try {
			int count = jdbcTemplate.queryForObject(selectSql, new Object[] {userCredential.getUsername(), userCredential.getPassword()}, Integer.class);
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
