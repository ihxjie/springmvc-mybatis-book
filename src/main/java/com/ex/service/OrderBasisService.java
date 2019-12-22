package com.ex.service;

import com.ex.model.OrderBasis;

import java.util.List;

public interface OrderBasisService {
    int deleteByOrderId(Integer orderId);

    List<OrderBasis> selectOrderBasisByNames(String keyword);
}
