package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Setter @Getter
public class BQNA {

    @Id
    @Column
    private int bqna_no;

    @Column
    private String b_id;

    @Column
    private String bqna_title;

    @Column
    private String bqna_cont;

    @Column
    private String bqna_answer;

    @Column
    private String bqna_id;

    @Column
    private String admin_id;

    @Column
    private String qdate;

    @Column
    private String adate;



}
