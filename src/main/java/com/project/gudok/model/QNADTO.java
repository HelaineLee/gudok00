package com.project.gudok.model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class QNADTO {

    private int qnum;
    private String sId;
    private String bId;
    private int subnum;
    private int cNum;
    private String qCont;
    private LocalDateTime qDay;
    private String aCont;
    private LocalDateTime aDate;
    private String qTitle;
}
