package com.project.gudok.repository;

import com.project.gudok.entity.QNA;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class QNARepository {

    @PersistenceContext
    private EntityManager em;
    @Transactional
    public List<QNA> qnaList(){
        return em.createQuery("select q from QNA q", QNA.class).getResultList();
    }
    @Transactional
    public QNA qnaCont(Long qnum){
        return em.find(QNA.class, qnum);
    }
    @Transactional
    public void write(QNA qna){
        em.persist(qna);
    }
    @Transactional
    public void delete(Long qnum){
        em.remove(qnum);
    }
    @Transactional
    public void update(QNA qna){
        em.refresh(QNA.class);
    }
    @Transactional
    public void answer(QNA qna){
        em.refresh(QNA.class);
    }
}
