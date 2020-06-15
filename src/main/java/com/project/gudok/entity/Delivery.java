package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity @Getter @Setter
public class Delivery {

    @Id @Column(name = "d_id")
    private Long dId;
    private String dAddr;
    private DStatus dStatus;
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "delivery")
    private SubRecord subrecord;
}
