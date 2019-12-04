package com.ex.service;

import com.ex.model.ExUser;

import java.util.List;

public interface ExUserService {
    List<ExUser> findAll();
    ExUser findUserById(String id);
}
