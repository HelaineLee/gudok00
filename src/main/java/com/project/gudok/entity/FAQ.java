package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Setter @Getter
@SequenceGenerator(name = "faq_gene", sequenceName = "faq_seq", initialValue = 1, allocationSize = 1)
public class FAQ {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "faq_gene")
    private int faqnum;
    @Column(length = 100, nullable = false)
    private String faqQ;
    @Column(length = 1000, nullable = false)
    private String faqA;
    @Column(length = 20, nullable = false)
    private String adminId;



}
