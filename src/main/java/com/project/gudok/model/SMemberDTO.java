package com.project.gudok.model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class SMemberDTO {

    private String sId;
    private String sPwd;
    private int memCode;
    private String sName;
    private LocalDateTime sBday;
    private String sPhone;
    private String sEmail;
    private LocalDateTime sJdDate;
    private LocalDateTime sWDate;
    private String RMember;
    private int SPoint;
    private String sAddr;
    private String sAddr1;
    private String sAddr2;
}
