package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity @Getter @Setter
public class Delivery {

    @Id
    private long dId;
    private String dAddr;
    private DStatus dStatus;


}
