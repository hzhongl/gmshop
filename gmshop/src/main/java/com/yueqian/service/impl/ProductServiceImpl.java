package com.yueqian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.ProductMapper;
import com.yueqian.dao.entity.Product;
import com.yueqian.service.IProductService;

@Service("productService")
public class ProductServiceImpl implements IProductService {
	@Autowired
	private ProductMapper productMapper;

	public int deleteByPrimaryKey(Long id) {
		return 0;
	}

	public int insert(Product record) {
		int i = productMapper.insert(record);
		return i;
	}

	public int insertSelective(Product record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Product selectByPrimaryKey(Long id) {
		Product product = productMapper.selectByPrimaryKey(id);
		return product;
	}

	public int updateByPrimaryKeySelective(Product record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(Product record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Product> SelectByCategory(Long cid) {
		List<Product> products = productMapper.SelectByCategory(cid);
		return products;
	}

	public List<Product> SelectAll() {
		List<Product> products = productMapper.SelectAll();
		return products;
	}

	@Override
	public List<Product> selectIndex() {
		List<Product> products = productMapper.selectIndex();
		return products;
	}

}
