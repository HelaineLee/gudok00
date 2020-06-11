package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Setter @Getter
public class BQNA {

    @Id
    private long bqna_no;

    @Column(length = 20,nullable = false)
    private String bId;

    @Column(length = 200,nullable = false)
    private String bqna_title;

    @Column(length = 2000,nullable = false)
    private String bqna_cont;

    @Column(length = 2000)
    private String bqna_answer;

    @Column(length = 20)
    private String admin_id;

    @Column(length = 20)
    private String cNum;

    private LocalDateTime qdate;

    private LocalDateTime adate;



}
