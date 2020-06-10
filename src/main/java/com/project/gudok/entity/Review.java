package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity @Getter @Setter
public class Review {

    @Id
    private int revnum;

    private String sId;
    private SubRecord subrecord;

    private int score;
    private String usercmt;
    private String refile;
    private String delreq;
    private String dreason;
    private Date rdate;




}
