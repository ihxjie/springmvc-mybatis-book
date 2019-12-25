package com.ex.service.impl;

import com.ex.dao.BorderMapper;
import com.ex.model.Border;
import com.ex.service.BorderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BorderServiceImpl implements BorderService {

    @Resource
    BorderMapper borderMapper;

    @Override
    public int addBorder(Border border) {
        return 0;
    }

    @Override
    public int delBorder(int border_id) {
        return 0;
    }

    @Override
    public List<Border> getAllBorder() {
        return borderMapper.getAllBorder();
    }
}
