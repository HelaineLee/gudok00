package com.project.gudok.model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class BQNADTO {

    private Long bqnaNo;
    private String bId;
    private String bqnaTitle;
    private String bqnaCont;
    private String bqnaAnswer;
    private String adminId;
    private String cNum;
    private LocalDateTime qdate;
    private LocalDateTime adate;
}
