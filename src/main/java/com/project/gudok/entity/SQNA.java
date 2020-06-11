package com.project.gudok.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class SQNA {

    @Id
    private int sqnaNo;

    private String userId;
    private String sqnaTitle;
    private String sqnaCont;
    private String SqnaA;
    private String adminId;
    private int cnum;
    private Date qdate;
    private Date adate;



}
