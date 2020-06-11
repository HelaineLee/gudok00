package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
@Setter @Getter
public class FAQ {

    @Id
    private int fasqnum;
    @Column(length = 100, nullable = false)
    private String faqQ;
    @Column(length = 1000, nullable = false)
    private String faqA;
    @Column(length = 20, nullable = false)
    private String adminId;



}
