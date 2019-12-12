package com.ex.controller;

import com.alibaba.fastjson.JSON;
import com.ex.model.Product;
import com.ex.model.User;
import com.ex.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    private ProductService productService;

    @GetMapping("/findProduct/{keyword}")
    @ResponseBody
    public List<Product> getProduct(@PathVariable String keyword){
        return productService.findProductByName(keyword);
    }

    @PostMapping(path = "/add")
    public String add(@RequestBody Product product){
        System.out.println(product);
        productService.addProduct(product);
        return "hello";
    }

    @GetMapping("/findProductById/{product_id}")
    @ResponseBody
    public Product getProductById(@PathVariable Integer product_id){
        return productService.findProductById(product_id);
    }

    @GetMapping("/sayHello")
    public void sayHello(){
        System.out.println("Hellow");
    }

    @PostMapping("/insert")
    public String insert(@ModelAttribute Product product, Model model, Errors errors){
        productService.addProduct(product);
        return "hello";
    }

    @GetMapping("/list")
    public String pageList(ModelMap map,@RequestParam(defaultValue = "1",required = true,value = "pageNo")Integer pageNo){
        Integer pageSize = 9;
        PageHelper.startPage(pageNo, pageSize);
        List<Product> productsList = productService.findAllProduct();
        PageInfo<Product> pageInfo = new PageInfo<Product>(productsList);
        map.addAttribute("pageInfo", pageInfo);
        return "product";
    }

    @RequestMapping("/testAjax")
    public @ResponseBody User testAjax(@RequestBody User user){
        System.out.println("tA执行了");
        // 客户端发送ajax请求，传JSON字符串，后端把JSON字符串封装到user_2对象中
        System.out.println(user);
        return user;
    }

    @RequestMapping("/jsp")
    public String jsp(){
        return "regist";
    }

    @GetMapping(value = "/test",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getProduct(){
        PageHelper.startPage(1,3);
        List<Product> productList = productService.findAllProduct();
        System.out.println("6");
        PageInfo pageInfo = new PageInfo(productList);
        System.out.println(JSON.toJSONString(pageInfo));
        return JSON.toJSONString(pageInfo);

    }


}
