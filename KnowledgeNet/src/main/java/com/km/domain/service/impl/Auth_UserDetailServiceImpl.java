package com.km.domain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.km.domain.repository.Auth_UserRepository;
import com.km.model.entity.Auth_User;

@Component
public class Auth_UserDetailServiceImpl implements UserDetailsService {
	@Autowired
    private Auth_UserRepository userRepository;
	
	@Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Auth_User usr = userRepository.findUserByUserName(username);
        if (usr == null) {
            throw new UsernameNotFoundException("This user is not existed！");
        }

        return null;
    }
}
