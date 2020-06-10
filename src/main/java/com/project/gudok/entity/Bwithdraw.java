package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
public class Bwithdraw {
    @Id @Column(length = 20)
    private String bId;
    @Column(length = 2000)
    private String reason;
    @Column(nullable = false)
    private LocalDateTime regdate;
    @Column(columnDefinition = "number(2) default 1")
    private int complete;

}
