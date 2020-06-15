package com.project.gudok.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Setter @Getter
@SequenceGenerator(name = "qna_gene", sequenceName = "qna_seq", initialValue = 1, allocationSize = 1)
public class QNA {

    @Id @Column(length = 10) @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "qna_gene")
    private Long qnum;

    @Column(length = 20, nullable = false)
    private String sId;

    @Column(length = 20, nullable = false)
    private String bId;

    @Column(length = 20)
    private Long subnum;

    @Column(length = 20, nullable = false)
    private String cNum;

    @Column(length = 1000, nullable = false)
    private String qCont;

    private LocalDateTime qDay;

    @Column(length = 1000)
    private String aCont;

    private LocalDateTime aDate;

    @Column(length = 200)
    private String qTitle;

    // repository를 사용하지 않는 메서드
    // 핵심적으로 중요한 멤버가 있는 곳에 설정하면 좋은 메서드 : 연관관계 편의 메서드.
    // 양방향에 적용해야 하는 경우에 사용하면 좋음.



}
