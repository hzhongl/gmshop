package com.yueqian.dao;

import java.util.List;

import com.yueqian.dao.entity.Category;

public interface CategoryMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Category record);

	int insertSelective(Category record);

	Category selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Category record);

	int updateByPrimaryKey(Category record);

	List<Category> selectAll();

	List<Category> selectChrids();

	List<Category> selectParent();
}