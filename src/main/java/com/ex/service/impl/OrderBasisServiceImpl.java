package com.ex.service.impl;

import com.ex.dao.OrderBasisMapper;
import com.ex.model.OrderBasis;
import com.ex.service.OrderBasisService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderBasisServiceImpl implements OrderBasisService {

    @Resource
    OrderBasisMapper orderBasisMapper;
    @Override
    public int deleteByOrderId(Integer orderId) {
        return orderBasisMapper.deleteByOrderId(orderId);
    }

    @Override
    public List<OrderBasis> selectOrderBasisByNames(String keyword) {
        return orderBasisMapper.selectOrderBasisByNames(keyword);
    }
}
