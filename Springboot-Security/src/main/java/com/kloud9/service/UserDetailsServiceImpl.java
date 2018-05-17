package com.kloud9.service;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kloud9.bo.User;
import com.kloud9.dao.UserDetailsDao;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserDetailsDao dao;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		User user = dao.get(userName);
		if (user == null) {
			throw new UsernameNotFoundException("User name not registered");
		}
		GrantedAuthority authority = new SimpleGrantedAuthority(user.getRole());

		return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),
				Arrays.asList(authority));
	}

}
