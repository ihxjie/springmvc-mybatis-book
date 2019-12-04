package com.ex.controller;

import com.ex.dao.ProductMapper;
import com.ex.model.Product;
import com.ex.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

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
        productService.addProduct(product);
        return "hello";
    }

    @GetMapping("/findProductById/{product_id}")
    @ResponseBody
    public Product getProductById(@PathVariable Integer product_id){
        return productService.findProductById(product_id);
    }
}
