package com.ex.controller;

import com.alibaba.fastjson.JSONObject;
import com.ex.model.Product;
import com.ex.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Calendar;
import java.util.List;

import static com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    ProductService productService;

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

    @GetMapping("/{product_id}")
    public ModelAndView getProductById(@PathVariable Integer product_id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("product",productService.findProductById(product_id));
        modelAndView.setViewName("adminProductSingle");
        return modelAndView;

    }

    @PostMapping("/insert")
    public String insert(@ModelAttribute Product product, Model model, Errors errors){
        productService.addProduct(product);
        return "hello";
    }
    @PostMapping("update")
    public String update(@ModelAttribute Product product){
        productService.updProduct(product);
        return "redirect:/backstageSys";
    }

    @GetMapping(value = "/getProducts",produces = "text/plain;charset=utf-8")
    @ResponseBody
    public String getProduct(@RequestParam(defaultValue = "1",value = "pageNum") int pageNum, @RequestParam(defaultValue = "10",value = "pageSize") int pageSize){
        PageHelper.startPage(pageNum,pageSize);
        List<Product> productList = productService.findAllProduct();
        PageInfo pageInfo = new PageInfo(productList);
        System.out.println(JSONObject.toJSONString(pageInfo, WriteMapNullValue));
        return JSONObject.toJSONString(pageInfo, WriteMapNullValue);
    }
    @GetMapping("/handle")
    public String handle(){
        return "fileUpload";
    }

}
