package com.kloud9.config;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class PasswordEncryptor {
	public static void main(String[] args) {
		for (int i = 0; i < 10; i++) {
			PasswordEncoder encoder = new BCryptPasswordEncoder();
			System.out.println("encode pass :" + encoder.encode("password"));
		}
	}
}
