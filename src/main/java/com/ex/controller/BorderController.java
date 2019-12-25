package com.ex.controller;

import com.ex.model.Border;
import com.ex.service.BorderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/border")
public class BorderController
{

    @Resource
    BorderService borderService;

    @RequestMapping("/getborder")
    public String getborder(HttpSession session){
        List<Border> list = borderService.getAllBorder();
        session.setAttribute("blist",list);
        System.out.println(list.size());
        for(Border border : list){
            System.out.println(border);
        }
        return "border";
    }
}
