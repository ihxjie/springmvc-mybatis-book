package com.ex.controller;

import com.ex.service.ExUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ExTestController {

    @Resource
    private ExUserService exUserService;


    @GetMapping("/hello")
    public String hello(Model model){
        model.addAttribute("message","hello");
        return "backstageSys";
    }

    @RequestMapping("/login")
    public String jsp(){
        return "login";
    }

}
