package com.ex.test;

import com.ex.dao.BorderMapper;
import com.ex.dao.ExUserDao;
import com.ex.model.Border;
import com.ex.model.ExUser;
import com.ex.service.ExUserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ExUserDaoTest extends BaseJunit4Test {
    @Autowired
    private ExUserService exUserService;
    @Autowired
    private ExUserDao exUserDao;

    @Test
    public void testFindAll(){
        List<ExUser> exUserList = exUserService.findAll();
        for (ExUser exUser : exUserList){
            System.out.println(exUser);
        }
    }
    @Test
    public void testFindUserById(){
        ExUser exUser = exUserService.findUserById("2");
        System.out.println(exUser);
    }
    @Test
    public void testDeleteUserById(){
        int res = exUserDao.deleteUserById(3);
        System.out.println(res);
    }

}
