package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
public class MGR {
    @Id @Column(length = 20)
    private String adminId;
    @Column(nullable = false, length = 20)
    private String adminpwd;
    @Column(length = 20)
    private String adminname;
    @Column(nullable = false, length = 5)
    private int cnum;
    @Column(length = 50)
    private String adminemail;

}
