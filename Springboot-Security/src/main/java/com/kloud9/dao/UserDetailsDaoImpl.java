package com.kloud9.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kloud9.bo.User;

@Repository
public class UserDetailsDaoImpl implements UserDetailsDao {

	private final String SQL_GET_USER = "select user_id,user_name,password,role from user where user_name like :userName";

	@Autowired
	private NamedParameterJdbcTemplate namedJdbcTemplate;

	@Override
	public User get(String userName) {
		Map<String, String> parameter = new HashMap<>();
		parameter.put("userName", userName);
		return namedJdbcTemplate.queryForObject(SQL_GET_USER, parameter, new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setRole(rs.getString(4));
				return user;
			}
		});
	}

}
