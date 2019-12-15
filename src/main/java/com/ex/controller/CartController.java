package com.ex.controller;

import com.ex.model.Cart;
import com.ex.model.User;
import com.ex.service.CartService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Resource
    private CartService cartService;

    @RequestMapping("/postcart")
    public @ResponseBody
    String postCart(@RequestBody Cart cart){
        int num = cartService.insert(cart);
        if(num == 0)
            return "fail";
        else {
            return "success";
        }
    }
}
