package com.ex.test;

import com.ex.model.ExUser;
import com.ex.service.ExUserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.List;

public class ExUserDaoTest extends BaseJunit4Test {
    @Autowired
    private ExUserService exUserService;
    @Test
    public void testFindAll(){
        List<ExUser> exUserList = exUserService.findAll();
        for (ExUser exUser : exUserList){
            System.out.println(exUser);
        }
    }
}
