package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
@Setter @Getter
public class QNA {

    @Id
    private int qnum;
    private String sId;
    private String bId;
    private int subnum;
    private int cNum;
    private String Qcont;
    private Date qDay;
    private String aCont;
    private Date aDate;
    private String qTitle;



}
