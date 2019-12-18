package com.ex.controller;

import com.alibaba.fastjson.JSONObject;
import com.ex.model.User;
import com.ex.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import static com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    UserService userService;

    @GetMapping("/delete/{userId}")
    public String delete(@PathVariable Integer userId){
        userService.deleteByUserId(userId);
        return "redirect:/UserBackstageSys";
    }

    @GetMapping(value = "/getUser",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getProduct(@RequestParam(defaultValue = "1",value = "pageNum") int pageNum,
                             @RequestParam(defaultValue = "10",value = "pageSize") int pageSize,
                             @RequestParam(defaultValue = "", value = "keyword") String keyword){
        PageHelper.startPage(pageNum,pageSize);
        List<User> userList = userService.selectUserByEmail(keyword);
        PageInfo pageInfo = new PageInfo(userList);
        //System.out.println(JSONObject.toJSONString(pageInfo, WriteMapNullValue));
        return JSONObject.toJSONString(pageInfo, WriteMapNullValue);
    }
}
