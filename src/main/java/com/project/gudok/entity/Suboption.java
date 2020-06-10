package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity @Getter @Setter
public class Suboption {

    @Id @Column(name = "o_id")
    private String oId;

    private Products products;
    private int subcount;
    private int drate;

}
