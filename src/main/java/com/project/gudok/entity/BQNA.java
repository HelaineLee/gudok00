package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Setter @Getter
public class BQNA {

    @Id
    private long bqnaNo;

    @Column(length = 20,nullable = false)
    private String bId;

    @Column(length = 200,nullable = false)
    private String bqnaTitle;

    @Column(length = 2000,nullable = false)
    private String bqnaCont;

    @Column(length = 2000)
    private String bqnaAnswer;

    @Column(length = 20)
    private String adminId;

    @Column(length = 20)
    private String cNum;

    private LocalDateTime qdate;

    private LocalDateTime adate;



}
