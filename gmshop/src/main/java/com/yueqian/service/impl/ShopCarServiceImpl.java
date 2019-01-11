package com.yueqian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.ShopcarMapper;
import com.yueqian.dao.entity.Shopcar;
import com.yueqian.service.ShopCarService;

@Service("ShopCarService")
public class ShopCarServiceImpl implements ShopCarService {

	@Autowired
	private ShopcarMapper shopcarMapper;

	@Override
	public List<Shopcar> findAll() {
		List<Shopcar> shopcars = shopcarMapper.findAll();
		return shopcars;
	}

	@Override
	public int insert(Shopcar shopcar) {
		int i = shopcarMapper.insert(shopcar);
		return i;
	}

	@Override
	public int deleteByPrimaryKey(Long id) {
		int i = shopcarMapper.deleteByPrimaryKey(id);
		return i;
	}

	@Override
	public List<Shopcar> findAllByUid(Long id) {
		List<Shopcar> shopcars = shopcarMapper.findAllByUid(id);
		return shopcars;
	}

}
