package com.ex.dao;

import com.ex.model.OrderDetail;

import java.util.List;

public interface OrderDetailMapper {
    int deleteByPrimaryKey(Integer orderId);

    List<OrderDetail> selectByNames(String keyword);
}