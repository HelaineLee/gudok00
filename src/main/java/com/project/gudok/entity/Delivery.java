package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity @Getter @Setter
@SequenceGenerator(name = "del_gene", sequenceName = "del_seq", initialValue = 1, allocationSize = 1)
public class Delivery {

    @Id @Column(name = "d_id") @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "del_gene")
    private Long dId;
    private String dAddr;
    private DStatus dStatus;
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "delivery")
    private SubRecord subrecord;
}
