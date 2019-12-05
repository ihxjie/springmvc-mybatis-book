package com.ex.controller;

import com.ex.dao.ProductMapper;
import com.ex.model.Product;
import com.ex.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
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
        return "backstageSys";
    }

    @PostMapping("/insert")
    public String insert(@ModelAttribute Product product, Model model, Errors errors){
        productService.addProduct(product);
        System.out.println("Xjie");
        return "hello";
    }

    @GetMapping("/list")
    public String pageList(ModelMap map,@RequestParam(defaultValue = "1",required = true,value = "pageNo")Integer pageNo){
        Integer pageSize = 5;
        PageHelper.startPage(pageNo, pageSize);
        List<Product> productsList = productService.findAllProduct();
        PageInfo<Product> pageInfo = new PageInfo<Product>(productsList);
        map.addAttribute("pageInfo", pageInfo);
        return "list";
    }
}
