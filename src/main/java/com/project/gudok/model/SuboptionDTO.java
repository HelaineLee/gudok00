package com.project.gudok.model;

import com.project.gudok.entity.Products;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class SuboptionDTO {

    private String oId;
    private Products products;
    private int subcount;
    private int drate;
}
