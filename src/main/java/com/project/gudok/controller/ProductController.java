package com.project.gudok.controller;

import com.project.gudok.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;


    @GetMapping("/newProducts/form")
    public String newPForm(Model model){
        model.addAttribute("newPForm", new );
        return "items/createItemForm";
    }




}
