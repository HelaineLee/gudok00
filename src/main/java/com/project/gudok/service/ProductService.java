package com.project.gudok.service;

import com.project.gudok.entity.Products;
import com.project.gudok.repository.BMemberRepository;
import com.project.gudok.repository.ProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

    @Autowired
    ProductsRepository PRepository;

    @Autowired
    BMemberRepository BMRepository;


    // 상품 등록 신청
    public void newPRequest(Products products){
        PRepository.save(products);
    }




}
