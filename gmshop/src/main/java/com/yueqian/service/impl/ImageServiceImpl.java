package com.yueqian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yueqian.dao.ImageMapper;
import com.yueqian.dao.entity.Image;
import com.yueqian.service.ImageService;

@Service("imageService")
public class ImageServiceImpl implements ImageService {
	@Autowired
	private ImageMapper imageMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Image record) {
		int i = imageMapper.insert(record);
		return i;
	}

	@Override
	public int insertSelective(Image record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Image selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Image record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Image record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Image> selectByProduct(Long pid) {
		List<Image> images = imageMapper.selectByProduct(pid);
		return images;
	}

}
