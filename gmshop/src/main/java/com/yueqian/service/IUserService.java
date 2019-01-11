package com.yueqian.service;

import com.yueqian.dao.entity.User;

public interface IUserService {
	public User getById(long id);

	public int add(User user);

	User login(User user);
}
