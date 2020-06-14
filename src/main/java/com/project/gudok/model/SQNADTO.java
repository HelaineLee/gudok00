package com.project.gudok.model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class SQNADTO {

    private int sqnaNo;
    private String userId;
    private String sqnaTitle;
    private String sqnaCont;
    private String SqnaA;
    private String adminId;
    private int cnum;
    private LocalDateTime qdate;
    private LocalDateTime adate;
}
