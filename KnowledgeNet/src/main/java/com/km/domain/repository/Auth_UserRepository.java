package com.km.domain.repository;

import org.springframework.data.repository.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.km.model.entity.Auth_User;

@Transactional
public interface Auth_UserRepository extends Repository<Auth_User, Integer>{
	Auth_User findByUserNameAndUserPassword(String UserName, String password);

	Auth_User findUserByUserName(String usrName);
}
