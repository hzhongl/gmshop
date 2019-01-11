package com.yueqian.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.UserMapper;
import com.yueqian.dao.entity.User;
import com.yueqian.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserMapper userMapper;

	public User getById(long id) {
		User user = userMapper.selectByPrimaryKey(id);
		return user;
	}

	public int add(User user) {
		return userMapper.insertSelective(user);
	}

	public User login(User user) {

		return userMapper.login(user);
	}

}
