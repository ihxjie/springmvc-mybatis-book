package com.ex.dao;

import com.ex.model.OrderDetail;

public interface OrderDetailMapper {
    int deleteByPrimaryKey(Integer purchaseQuantity);

    int insert(OrderDetail record);

    int insertSelective(OrderDetail record);

    OrderDetail selectByPrimaryKey(Integer purchaseQuantity);

    int updateByPrimaryKeySelective(OrderDetail record);

    int updateByPrimaryKey(OrderDetail record);
}