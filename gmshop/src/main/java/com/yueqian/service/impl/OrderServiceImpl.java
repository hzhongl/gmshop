package com.yueqian.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.OrderMapper;
import com.yueqian.dao.entity.Order;
import com.yueqian.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		int i = orderMapper.deleteByPrimaryKey(id);
		return i;
	}

	@Override
	public int insert(Order record) {
		int i = orderMapper.insert(record);

		return i;
	}

	@Override
	public int insertSelective(Order record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Order selectByPrimaryKey(Long id) {
		Order order = orderMapper.selectByPrimaryKey(id);
		return order;
	}

	@Override
	public int updateByPrimaryKeySelective(Order record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Order record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
