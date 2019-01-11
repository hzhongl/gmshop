package com.yueqian.dao;

import com.yueqian.dao.entity.OrderDetail;

public interface OrderDetailMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderDetail record);

    int insertSelective(OrderDetail record);

    OrderDetail selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderDetail record);

    int updateByPrimaryKey(OrderDetail record);
}