package com.yueqian.dao;

import com.yueqian.dao.entity.User;

public interface UserMapper {
	int deleteByPrimaryKey(Long id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	User login(User user);
}