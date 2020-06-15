package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Setter @Getter
@SequenceGenerator(name = "qna_gene", sequenceName = "qna_seq", initialValue = 1, allocationSize = 1)
public class QNA {

    @Id @Column(length = 10) @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "qna_gene")
    private Long qnum;

    @Column(length = 20, nullable = false)
    private String sId;

    @Column(length = 20, nullable = false)
    private String bId;

    @Column(length = 20)
    private Long subnum;

    @Column(length = 20, nullable = false)
    private int cNum;

    @Column(length = 1000, nullable = false)
    private String qCont;

    private LocalDateTime qDay;

    @Column(length = 1000)
    private String aCont;

    private LocalDateTime aDate;

    @Column(length = 200)
    private String qTitle;



}
