package com.project.gudok.model;

import com.project.gudok.entity.BStatus;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class BMemberDTO {

    private String bId;
    private String bPwd;
    private String bName;
    private String bCeo;
    private String bStory;
    private String bPhone;
    private String bAddr;
    private String bEmail;
    private LocalDateTime bJdDate;
    private LocalDateTime bWDate;
    private int memCode;
    private String BLogo;
    private BStatus BStatus;
}
