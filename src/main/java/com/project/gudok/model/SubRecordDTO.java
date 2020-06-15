package com.project.gudok.model;

import com.project.gudok.entity.Delivery;
import com.project.gudok.entity.Products;
import com.project.gudok.entity.SMember;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class SubRecordDTO {

    private Long subnum;
    private SMember smember;
    private Products products;
    private LocalDateTime subBegin;
    private int subPeriod;
    private LocalDateTime cday;
    private int substatus;
    private LocalDateTime payday;
    private String oId;
    private int subprice;
    private Delivery delivery;
    private int count;
}
