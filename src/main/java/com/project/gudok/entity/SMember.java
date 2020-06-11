package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDateTime;
import java.util.Date;

@Entity @Getter @Setter
public class SMember {

    @Id @Column(length = 20)
    private String sId;

    @Column(length = 20, nullable = false)
    private String sPwd;

    @Column(length = 5, columnDefinition = "default 1")
    private int memCode;

    @Column(length = 20, nullable = false)
    private String sName;

    private LocalDateTime sBday;

    @Column(length = 20, nullable = false)
    private String sPhone;

    @Column(length = 50, nullable = false)
    private String sEmail;

    @Column(nullable = false)
    private LocalDateTime sJdDate;

    private LocalDateTime sWDate;

    @Column(length = 20)
    private String RMember;

    @Column(length = 10, nullable = false)
    private int SPoint;

    @Column(length = 200, nullable = false)
    private String sAddr;

    @Column(length = 200)
    private String sAddr1;

    @Column(length = 200)
    private String sAddr2;

}
