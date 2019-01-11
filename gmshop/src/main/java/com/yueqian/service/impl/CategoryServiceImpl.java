package com.yueqian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.CategoryMapper;
import com.yueqian.dao.entity.Category;
import com.yueqian.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryMapper categoryMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		int i = categoryMapper.deleteByPrimaryKey(id);
		return i;
	}

	@Override
	public int insert(Category record) {
		int i = categoryMapper.insert(record);
		return i;
	}

	@Override
	public int insertSelective(Category record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Category selectByPrimaryKey(Long id) {
		Category category = categoryMapper.selectByPrimaryKey(id);
		return category;
	}

	@Override
	public int updateByPrimaryKeySelective(Category record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Category record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Category> selectAll() {
		List<Category> categories = categoryMapper.selectAll();
		return categories;
	}

	@Override
	public List<Category> selectChrids() {
		List<Category> categories = categoryMapper.selectChrids();
		return categories;
	}

	@Override
	public List<Category> selectParent() {
		List<Category> categories = categoryMapper.selectParent();
		return categories;
	}

}
