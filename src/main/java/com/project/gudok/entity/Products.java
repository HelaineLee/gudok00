package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Setter @Getter
public class Products {

    @Id
    @Column(length = 50)
    private String pId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "b_id")
    private BMember bmember;

    @Column(length = 50, unique = true)
    private String pName;

    @Column(length = 10, nullable = false)
    private int price;

    @Column(length = 2000)
    private String pStory;

    @Column(nullable = false)
    private LocalDateTime pRDate;

    @Column(length = 10, nullable = false)
    private int pcount;

    @Column
    private LocalDateTime pDDate;

    @Column(length = 2, columnDefinition = "number(3) defalut 1")
    private int pStatus;

    @Column(length = 20)
    private String deleteBy;

    @Column(length = 500)
    private String pImage1;

    @Column(length = 500)
    private String pImage2;

    @Column(length = 500)
    private String pImage3;

    @Column(length = 5)
    private int cNum;

    @OneToMany(mappedBy = "suboption")
    private List<Suboption> suboptions = new ArrayList<Suboption>();

    @OneToMany(mappedBy = "cart")
    private List<Cart> carts = new ArrayList<Cart>();

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cnum")
    private Cgory cgory;

    @OneToMany(mappedBy = "products")
    private List<SubRecord> subRecords = new ArrayList<SubRecord>();

    @Column(length = 20)
    private PRSTATUS prstatus;
}
