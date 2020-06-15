package com.project.gudok.model;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class FAQDTO {

    private int faqnum;
    private String faqQ;
    private String faqA;
    private String adminId;
}
