package com.ex.controller;

import com.ex.model.Cart;
import com.ex.model.Follow;
import com.ex.service.CartService;
import com.ex.service.FollowService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/follow")
public class FollowController {

    @Resource
    private FollowService followService;

    @RequestMapping("/postfollow")
    public @ResponseBody
    String postCart(@RequestBody Follow follow){
        int num = followService.insert(follow);
        if(num == 0)
            return "fail";
        else {
            return "success";
        }
    }
}
