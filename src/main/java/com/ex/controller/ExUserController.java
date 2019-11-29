package com.ex.controller;

import com.ex.model.ExUser;
import com.ex.service.ExUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class ExUserController {
    @Resource
    ExUserService exUserService;

    @RequestMapping("/findAll")
    public String findAll(){
        List<ExUser> exUserList = exUserService.findAll();
        for (ExUser exUser : exUserList){
            System.out.println(exUser);
        }
        return "hello";
    }

}
