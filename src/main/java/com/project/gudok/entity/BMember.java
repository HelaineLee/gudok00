package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.Date;

@Entity @Setter @Getter
public class BMember {

    private int memCode;
    @Id
    private String bId;
    private String bPwd;
    private String bName;
    private String bCeo;
    private String bStory;
    private String bPhone;
    private String bAdd;
    private String bEmail;
    private Date bJdDate;
    private Date bWDate;
    private String BLogo;
    private int BStatus;
}
