package com.project.gudok.model;

import com.project.gudok.entity.SubRecord;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class ReviewDTO {

    private int revnum;
    private SubRecord subrecord;
    private int score;
    private String userCmt;
    private int hit;
    private String rTitle;
    private Long subNum;
    private String refile;
    private int delStatus;
    private String dReason;
    private LocalDateTime dQDate;
    private String adminId;
    private LocalDateTime dDate;
}
