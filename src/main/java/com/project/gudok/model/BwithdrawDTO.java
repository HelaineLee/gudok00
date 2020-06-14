package com.project.gudok.model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class BwithdrawDTO {

    private String bId;
    private String reason;
    private LocalDateTime regdate;
    private int complete;
}
