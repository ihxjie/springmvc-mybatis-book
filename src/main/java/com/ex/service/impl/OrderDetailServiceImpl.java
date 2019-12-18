package com.ex.service.impl;

import com.ex.dao.OrderDetailMapper;
import com.ex.model.OrderDetail;
import com.ex.service.OrderDetailService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {

    @Resource
    OrderDetailMapper orderDetailMapper;

    @Override
    public int deleteByPrimaryKey(Integer purchaseQuantity) {
        return 0;
    }

    @Override
    public int insert(OrderDetail record) {
        return orderDetailMapper.insert(record);
    }

    @Override
    public int insertSelective(OrderDetail record) {
        return orderDetailMapper.insertSelective(record);
    }

    @Override
    public OrderDetail selectByPrimaryKey(Integer purchaseQuantity) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(OrderDetail record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(OrderDetail record) {
        return 0;
    }
}
