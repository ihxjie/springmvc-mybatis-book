package com.ex.controller;

import com.ex.model.Admin;
import com.ex.model.Product;
import com.ex.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {
    @Autowired
    AdminService adminService;


    @GetMapping("/Login")
    public String login(){
        return "fileUpload";
    }

    @PostMapping("/Validate")
    public String validate(@ModelAttribute Admin admin, Model model, Errors errors){
        Admin a = adminService.findAdminByUsername(admin.getUsername());
        if (a != null){
            return "redirect:/product/backstageSys";
        }
        model.addAttribute("info","密码错误");
        return "adminLogin";
    }
    @GetMapping("/ProductBackstageSys")
    public String backstageSys(){
        return "adminProductBackstageSys";
    }
    @GetMapping("/TypeBackstageSys")
    public String typeBackSys(){
        return "adminTypeBackstageSys";
    }
    @GetMapping("/UserBackstageSys")
    public String userBackSys(){
        return "adminUserBackstageSys";
    }
    @GetMapping("/OrderDetailBackstageSys")
    public String orderDetailBackSys(){
        return "adminOrderDetailBackstageSys";
    }
    @GetMapping("/BorderBackstageSys")
    public String borderBackSys(){
        return "adminBorderBackstageSys";
    }
    @GetMapping("/OrderBasisBackstageSys")
    public String orderBasisBackSys(){
        return "adminOrderBasisBackstageSys";
    }
}
