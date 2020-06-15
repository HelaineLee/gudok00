package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Setter @Getter
@SequenceGenerator(name = "bq_gene", sequenceName = "bq_seq", initialValue = 1, allocationSize = 1)
public class BQNA {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "bq_gene")
    private Long bqnaNo;

    @Column(length = 20,nullable = false)
    private String bId;

    @Column(length = 200,nullable = false)
    private String bqnaTitle;

    @Column(length = 2000,nullable = false)
    private String bqnaCont;

    @Column(length = 2000)
    private String bqnaAnswer;

    @Column(length = 20)
    private String adminId;

    @Column(length = 20)
    private String cNum;

    private LocalDateTime qdate;

    private LocalDateTime adate;



}
