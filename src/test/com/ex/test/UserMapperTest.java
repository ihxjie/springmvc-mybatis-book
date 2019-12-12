package com.ex.test;

import com.ex.dao.UserMapper;
import com.ex.model.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserMapperTest extends BaseJunit4Test {
    @Autowired
    UserMapper userMapper;

    @Test
    public void testSelectUserByEmail(){
        List<User> userList = userMapper.selectUserByEmail("test@email.com");
        for (User u : userList
             ) {
            System.out.println(u);
        }
    }
}
