package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Setter @Getter
public class BQNA {

    @Id
    @Column
    private int bqna_no;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "bId")
    private BMember bmember;

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
