package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@SequenceGenerator(name = "cart_gene", sequenceName = "cart_seq", initialValue = 1, allocationSize = 1)
public class Cart {
    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cart_gene")
    private Long cartnum;
    @Column(nullable = false, length = 20)
    private String sId;
    @Column(nullable = false, length = 50)
    private String pId;
    @Column(nullable = false, length = 2)
    private int quantity;
    private LocalDateTime cdate;
    @Column(length = 2)
    private Suboption suboption;
    @Column(length = 20)
    private Number subPeriod;

}
