package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity @Getter @Setter
public class Op {

    @Id @Column(length = 20)
    private String opId;

    @Column(length = 50)
    private String pId;


    @Column(length = 20, nullable = false)
    private String opOption;

}
