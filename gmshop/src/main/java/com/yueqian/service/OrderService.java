package com.yueqian.service;

import com.yueqian.dao.entity.Order;

public interface OrderService {
	int deleteByPrimaryKey(Long id);

	int insert(Order record);

	int insertSelective(Order record);

	Order selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Order record);

	int updateByPrimaryKey(Order record);
}
