package com.ex.service;

import com.ex.model.User;

import java.util.List;

public interface UserService {
    int deleteByUserId(Integer userId);

    int insertUser(User user);

    User selectByUserId(Integer userId);

    List<User> selectUserByEmail(String keyword);
}
