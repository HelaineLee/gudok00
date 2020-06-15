package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Getter
@Setter
@SequenceGenerator(name = "sq_gene", sequenceName = "sq_seq", initialValue = 1, allocationSize = 1)
public class SQNA {

    @Id @Column(length = 10) @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sq_gene")
    private Long sqnaNo;

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
