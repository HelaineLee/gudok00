package com.project.gudok.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
public class SQNA {

    @Id @Column(length = 10)
    private int sqnaNo;

    @Column(length = 20, nullable = false)
    private String userId;

    @Column(length = 200)
    private String sqnaTitle;

    @Column(length = 1000, nullable = false)
    private String sqnaCont;

    @Column(length = 1000)
    private String SqnaA;

    @Column(length = 20)
    private String adminId;

    @Column(length = 20)
    private int cnum;

    private LocalDateTime qdate;
    private LocalDateTime adate;



}
