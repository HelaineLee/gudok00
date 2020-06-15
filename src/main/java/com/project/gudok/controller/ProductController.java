package com.project.gudok.controller;

import com.project.gudok.model.ProductsDTO;
import com.project.gudok.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;


    @GetMapping("/newPUpload")
    public String nPBoard(){

        return "Products/UploadBoard";
    }
    @GetMapping("/newPUploadForm")
    public String PUploadForm(Model model){
        model.addAttribute("dto", new ProductsDTO());
        return "Products/PUploadForm";
    }




}
