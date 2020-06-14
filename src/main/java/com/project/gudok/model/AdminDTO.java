package com.project.gudok.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AdminDTO {

    private String adminId;
    private String adminpwd;
    private String adminname;
    private int memCode;
    private String adminemail;
}
