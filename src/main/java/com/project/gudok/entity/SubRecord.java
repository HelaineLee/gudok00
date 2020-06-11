package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@SequenceGenerator(name = "sr_gene", sequenceName = "sr_seq", initialValue = 1, allocationSize = 1)
public class SubRecord {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sr_gene")
    private Long subnum;

    @Column(nullable = false, length = 20)
    private String sId;
    @Column(nullable = false, length = 50)
    private String pId;
    @Column(nullable = false)
    private LocalDateTime subBegin;
    @Column(nullable = false, length = 3)
    private int subPeriod;
    private LocalDateTime cday;

    @Column(length = 5)
    private int payop;  // number(5)
    @Column(columnDefinition = "number(2) default 1")
    private int substatus; // number(2) default 1
    private LocalDateTime payday;
    @Column(nullable = false, length = 20)
    private String oId;
    @Column(length = 5)
    private int subprice;   // number(5)
    @Column(length = 10, nullable = false)
    private long dId;
    @Column(length = 5, columnDefinition = "default 1")
    private int count;


}
