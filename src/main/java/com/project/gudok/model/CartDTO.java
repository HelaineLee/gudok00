package com.project.gudok.model;

import com.project.gudok.entity.Products;
import com.project.gudok.entity.Suboption;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class CartDTO {

    private Long cartnum;
    private String sId;
    private Products products;
    private int quantity;
    private LocalDateTime cdate;
    private Suboption suboption;
    private int subPeriod;
}
