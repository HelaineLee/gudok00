package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.swing.*;

@Entity @Getter @Setter
public class Suboption {

    @Id
    @Column(length = 20)    // name 설정하면 오류 떠서 뺐음.
    private String oId;
    @Column(length = 20)
    private String pId;

    private String  products;   // 데이터 타입 products으로 하면 오류 떠서 뺌.
    @Column(length = 5)
    private int subcount;
    @Column(length = 3)
    private int drate;


    public Suboption() {
    }
}
