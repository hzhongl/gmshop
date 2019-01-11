package com.yueqian.dao;

import java.util.List;

import com.yueqian.dao.entity.Image;

public interface ImageMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Image record);

	int insertSelective(Image record);

	Image selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Image record);

	int updateByPrimaryKey(Image record);

	List<Image> selectByProduct(Long pid);
}