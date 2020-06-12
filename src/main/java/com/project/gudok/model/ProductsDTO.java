package com.project.gudok.model;

import com.project.gudok.entity.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Setter @Getter
public class ProductsDTO extends Products {

    private String pId;

    private BMember bmember;

    private String pName;

    private int price;

    private String pStory;

    private LocalDateTime pRDate;

    private int pcount;

    private LocalDateTime pDDate;

    private int pStatus;

    private String deleteBy;

    private String pImage1;

    private String pImage2;

    private String pImage3;

    private int cNum;

    private List<Suboption> suboptions = new ArrayList<Suboption>();

    private List<Cart> carts = new ArrayList<Cart>();

    private Cgory cgory;

    private List<SubRecord> subRecords = new ArrayList<SubRecord>();

    private PRSTATUS prstatus;

}
