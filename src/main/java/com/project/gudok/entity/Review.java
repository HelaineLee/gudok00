package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDateTime;
import java.util.Date;

@Entity @Getter @Setter
public class Review {

    @Id @Column(length = 10)
    private int revnum;

    private String subrecord;   // subrecord 달면 오류 떠서 뺌

    @Column(length = 2)
    private int score;

    @Column(length = 1000)
    private String userCmt;

    @Column(length = 10, columnDefinition = "default 0")
    private int hit;

    @Column(length = 200)
    private String rTitle;

    @Column(length = 20, nullable = false)
    private long subNum;

    @Column(length = 500)
    private String refile;

    private LocalDateTime rDate;

    @Column(length = 2, columnDefinition = "number(3) default 0")
    private int delStatus;

    @Column(length = 2)
    private String dReason;

    private LocalDateTime dQDate;

    @Column(length = 20)
    private String adminId;

    private LocalDateTime dDate;



}
