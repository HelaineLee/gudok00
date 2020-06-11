package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.servlet.support.BindStatus;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity @Setter @Getter
public class BMember {

    @Id @Column(length = 20)
    private String bId;
    @Column(length = 20,nullable = false)
    private String bPwd;
    @Column(length = 50,nullable = false,unique = true)
    private String bName;
    @Column(length = 20,nullable = false)
    private String bCeo;
    @Column(length = 2000)
    private String bStory;
    @Column(length = 20,nullable = false)
    private String bPhone;
    @Column(length = 1000,nullable = false)
    private String bAddr;
    @Column(length = 100,nullable = false)
    private String bEmail;
    @Column(nullable = false)
    private LocalDateTime bJdDate;
    @Column(nullable = false)
    private LocalDateTime bWDate;
    @Column(length = 5,nullable = false)
    private int memCode = 2;
    @Column(length = 1000)
    private String BLogo;
    @Column(nullable = false)
    private BStatus BStatus;

    @OneToMany(mappedBy = "products")
    private List<Products> products = new ArrayList<Products>();
}
