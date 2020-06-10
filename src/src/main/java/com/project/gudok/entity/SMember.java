package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity @Getter @Setter
public class SMember {

    private int memCode;
    @Id
    private String sId;
    private String sPwd;
    private String sName;
    private Date sBday;
    private String sPhone;
    private String sAdd1;
    private String sEmail;
    private Date sJdDate;
    private Date sWDate;
    private String RMember;
    private int SPoint;
    private String sAdd2;
    private String sAdd3;
}
