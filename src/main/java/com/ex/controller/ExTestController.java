package com.ex.controller;

import com.ex.model.ExUser;
import com.ex.service.ExUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/test")
public class ExTestController {

    @Resource
    private ExUserService exUserService;

    @GetMapping("/sayHello")
    public String sayHello(){
        List<ExUser> exUserList = exUserService.findAll();
        for (ExUser e : exUserList){
            System.out.println(e);
        }
        return "hello";
    }
}
