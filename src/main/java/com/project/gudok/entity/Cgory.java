package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Setter
@Getter
public class Cgory {

    @Id
    private int cnum;

    @Column(length = 50,nullable = false)
    private String cname;

    @OneToMany(fetch = FetchType.LAZY)
    private List<Products> products = new ArrayList<Products>();

}
