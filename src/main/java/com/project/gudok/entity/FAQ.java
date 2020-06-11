package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
@Setter @Getter
public class FAQ {

    @Id
    private int fasqnum;
    private String faqQ;
    private String faqA;




}
