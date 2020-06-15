package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity @Getter @Setter
@SequenceGenerator(name = "rev_gene", sequenceName = "rev_seq", initialValue = 1, allocationSize = 1)
public class Review {

    @Id @Column(length = 10) @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "rev_gene")
    private Long revnum;
    @OneToOne(fetch = FetchType.LAZY) @JoinColumn(name = "subnum")
    private SubRecord subrecord;

    @Column(length = 2)
    private int score;

    @Column(length = 1000)
    private String userCmt;

    @Column(length = 10, columnDefinition = "default 0")
    private int hit;

    @Column(length = 200)
    private String rTitle;

    @Column(length = 20, nullable = false)
    private Long subNum;

    @Column(length = 500)
    private String refile;

    private LocalDateTime rDate;

    @Column(length = 2, columnDefinition = "default 0")
    private int delStatus;

    @Column(length = 500)
    private String dReason;

    private LocalDateTime dQDate;

    @Column(length = 20)
    private String adminId;

    private LocalDateTime dDate;



}
