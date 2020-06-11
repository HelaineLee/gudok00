package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Setter
@Getter
public class Cgory {

    @Id
    @Column
    private int cnum;

    @Column
    private String cname;



}
