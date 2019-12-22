package com.ex.service;

import com.ex.model.OrderDetail;

import java.util.List;

public interface OrderDetailService {
    int deleteByPrimaryKey(Integer orderId);

    List<OrderDetail> selectByNames(String keyword);
}
