package com.km.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.km.domain.service.impl.Auth_UserDetailServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private Auth_UserDetailServiceImpl userDetailService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
        	.authorizeRequests()
	        	.antMatchers("/userMangement/**", "/resources/**", "/WEB-INF/jsp/**").permitAll()
	        	.anyRequest().authenticated()
	        	.and()
	        .formLogin()
	        	.defaultSuccessUrl("/home")
	        	.failureUrl("/userMangement/login")
	            .loginPage("/userMangement/login")
	            .permitAll()
	            .and()
	        .logout()
	        	.permitAll();
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		// 独自認証クラスを設定する
		auth.userDetailsService(userDetailService);
	}
}
