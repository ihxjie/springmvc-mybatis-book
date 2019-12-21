package com.ex.dao;

import com.ex.model.OrderBasis;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderBasisMapper {
    int deleteByOrderId(Integer orderId);

    //int insertSelective(OrderBasis record);

    OrderBasis selectByOrderId(Integer orderId);

    List<OrderBasis> selectAllOrderBasis();

    List<OrderBasis> selectOrderBasisByNames(String keyword);

    //int updateByPrimaryKeySelective(OrderBasis record);

    //int updateByPrimaryKey(OrderBasis record);
}