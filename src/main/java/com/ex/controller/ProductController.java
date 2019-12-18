package com.ex.controller;

import com.alibaba.fastjson.JSON;
import com.ex.model.Follow;
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
import javax.servlet.http.HttpSession;
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
    public String sayHello(){
        System.out.println("Hellow");
        return "ajax-demo";
    }

    @PostMapping("/insert")
    public String insert(@ModelAttribute Product product, Model model, Errors errors){
        productService.addProduct(product);
        return "hello";
    }

    @GetMapping(value = {"/list/{pname}","/list"})
        public String pageList(HttpSession session,@RequestParam(defaultValue = "1",required = true,value = "pageNo")Integer pageNo,@PathVariable(required = false) String pname){
        Object email = session.getAttribute("email");
        System.out.println("///////////" + email);
        if(email == null){
            System.out.println("/////////");
            session.setAttribute("email","游客");
        }
        Integer pageSize = 9;
        PageHelper.startPage(pageNo, pageSize);
        List<Product> productsList;
        if (pname == null || pname.length() == 0 || pname.equals("null"))
            productsList = productService.findAllProduct();
        else
            productsList = productService.findProductByName(pname);
        PageInfo<Product> pageInfo = new PageInfo<Product>(productsList);
        session.setAttribute("pageInfo", pageInfo);
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

    @GetMapping("/toSingle/{pid}")
    public String toProduct(@PathVariable(name = "pid")Integer productId, HttpSession session){
        Product product = productService.findProductById(productId);
        session.setAttribute("pid",productId);
        session.setAttribute("product",product);
        return "single";
    }

    @RequestMapping("/notfind")
    public String to404(){
        return "404";
    }

}
