package com.yueqian.dao;

import java.util.List;

import com.yueqian.dao.entity.Shopcar;

public interface ShopcarMapper {
	List<Shopcar> findAll();

	int insert(Shopcar shopcar);

	int deleteByPrimaryKey(Long id);

	List<Shopcar> findAllByUid(Long id);
}
