package com.ex.service.impl;

import com.ex.dao.ExUserDao;
import com.ex.model.ExUser;
import com.ex.service.ExUserService;
import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;//需要额外导入javax.annotation
import java.util.List;


@Service
public class ExUserServiceImpl implements ExUserService {

    @Resource
    private ExUserDao exUserDao;

    public List<ExUser> findAll(){
        return exUserDao.findAll();
    }

}
