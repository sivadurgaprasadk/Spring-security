package com.kloud9.SpringbootSecurity;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

import com.kloud9.config.SecurityConfig;
import com.kloud9.config.WebConfig;

@SpringBootApplication(scanBasePackages = { "com.kloud9.service", "com.kloud9.controller", "com.kloud9.dao" })
@Import({ WebConfig.class, SecurityConfig.class })
public class SpringbootSecurityApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootSecurityApplication.class, args);
	}

}
