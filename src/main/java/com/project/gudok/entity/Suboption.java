package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.swing.*;

@Entity @Getter @Setter
public class Suboption {

    @Id
    @Column(length = 20)    // name 설정하면 오류 떠서 뺐음.
    private String oId;

    @ManyToOne
    @JoinColumn(name = "p_id")
    private Products products;

    @ManyToOne
    @JoinColumn(name = "cnum")
    private Cart cart;

    @Column(length = 5)
    private int subcount;
    @Column(length = 3)
    private int drate;

    public Suboption() {
    }
}
