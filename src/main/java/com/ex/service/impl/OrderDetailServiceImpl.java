package com.ex.service.impl;

import com.ex.dao.OrderBasisMapper;
import com.ex.dao.OrderDetailMapper;
import com.ex.model.OrderBasis;
import com.ex.model.OrderDetail;
import com.ex.service.OrderBasisService;
import com.ex.service.OrderDetailService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {

    @Resource
    OrderDetailMapper orderDetailMapper;

    @Override
    public int deleteByPrimaryKey(Integer orderId) {
        return orderDetailMapper.deleteByPrimaryKey(orderId);
    }

    @Override
    public List<OrderDetail> selectByNames(String keyword) {
        return orderDetailMapper.selectByNames(keyword);
    }
}
