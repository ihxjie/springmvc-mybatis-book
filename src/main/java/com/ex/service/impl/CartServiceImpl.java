package com.ex.service.impl;

import com.ex.dao.CartMapper;
import com.ex.model.Cart;
import com.ex.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CartServiceImpl implements CartService {

    @Resource
    CartMapper cartMapper;

    @Override
    public int deleteByPrimaryKey(Integer cartId) {
        return 0;
    }

    @Override
    public int insert(Cart record) {
        return cartMapper.insert(record);
    }

    @Override
    public int insertSelective(Cart record) {
        return 0;
    }

    @Override
    public Cart selectByPrimaryKey(Integer cartId) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Cart record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Cart record) {
        return 0;
    }
}
