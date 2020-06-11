package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@SequenceGenerator(name = "sr_gene", sequenceName = "sr_seq", initialValue = 1, allocationSize = 1)
public class SubRecord {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sr_gene") @Column(name = "subnum")
    private Long subnum;
    @Column(nullable = false, length = 20)
    @ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "s_id")
    private SMember smember;
    @ManyToOne(fetch = FetchType.LAZY) @JoinColumn(name = "p_id")
    private Products products;

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
    @OneToOne(fetch = FetchType.LAZY) @JoinColumn(name = "d_id")
    private Delivery delivery;
    @Column(length = 5, columnDefinition = "default 1")
    private int count;
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "subrecord")
    private Review review;
}
