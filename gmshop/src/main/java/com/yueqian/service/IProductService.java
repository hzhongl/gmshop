package com.yueqian.service;

import java.util.List;

import com.yueqian.dao.entity.Product;

public interface IProductService {
	int deleteByPrimaryKey(Long id);

	int insert(Product record);

	int insertSelective(Product record);

	Product selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Product record);

	int updateByPrimaryKey(Product record);

	List<Product> SelectByCategory(Long cid);

	List<Product> SelectAll();

	List<Product> selectIndex();
}
