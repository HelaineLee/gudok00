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
    private int cnum;

    @Column(length = 50,nullable = false)
    private String cname;



}
