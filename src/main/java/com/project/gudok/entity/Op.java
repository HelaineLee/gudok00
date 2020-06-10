package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity @Getter @Setter
public class Op {

    @Id
    private String pId;

    private String opOption;
    private int op;
}
