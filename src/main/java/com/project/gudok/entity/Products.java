package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Setter @Getter
public class Products {

    @Id
    @Column
    private String p_id;

    @Column
    private String b_id;

    @Column
    private String pname;

    @Column
    private int price;

    @Column
    private String pstory;

    @Column
    private String prdate;

    @Column
    private int pcount;

    @Column
    private String pddate;

    @Column
    private int pstatus;

    @Column
    private String deleteby;

    @Column
    private String pimage1;

    @Column
    private String pimage2;

    @Column
    private String pimage3;

    @Column
    private int cnum;

    @Column
    private String bname;



}
