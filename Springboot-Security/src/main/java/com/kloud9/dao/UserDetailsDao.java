package com.kloud9.dao;

import com.kloud9.bo.User;

public interface UserDetailsDao {

	User get(String userName);

	/*Principal add(User user);

	Principal update(int userId);

	Principal delete(int userId);*/
}
