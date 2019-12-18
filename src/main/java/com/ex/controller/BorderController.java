package com.ex.controller;

import com.alibaba.fastjson.JSONObject;
import com.ex.model.Border;
import com.ex.service.BorderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import static com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue;

@Controller
@RequestMapping("/border")
public class BorderController {

    @Resource
    BorderService borderService;

    @GetMapping(value = "/getBorder",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getProduct(@RequestParam(defaultValue = "1",value = "pageNum") int pageNum,
                             @RequestParam(defaultValue = "10",value = "pageSize") int pageSize,
                             @RequestParam(defaultValue = "", value = "keyword") String keyword){
        PageHelper.startPage(pageNum,pageSize);
        List<Border> borderList = borderService.findBorderByNames(keyword);
        PageInfo pageInfo = new PageInfo(borderList);
        //System.out.println(JSONObject.toJSONString(pageInfo, WriteMapNullValue));
        return JSONObject.toJSONString(pageInfo, WriteMapNullValue);
    }
    @GetMapping("/delete/{borderId}")
    public String delete(@PathVariable Integer borderId){
        borderService.delBorder(borderId);
        return "redirect:/BorderBackstageSys";
    }
}
