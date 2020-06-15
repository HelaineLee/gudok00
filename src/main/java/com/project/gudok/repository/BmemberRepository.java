package com.project.gudok.repository;

import com.project.gudok.entity.BMember;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class BMemberRepository {

    @PersistenceContext
    private EntityManager em;

    public void save(BMember bmember) {
        em.persist(bmember);
    }

    public BMember findOne(String bId) {
        return em.find(BMember.class, bId);
    }

    public List<BMember> findAll() {
        return em.createQuery("select m from BMember m", BMember.class).getResultList();
    }

    public List<BMember> findById(String bId) {
        return em.createQuery("select m from BMember m where m.bId = :bId", BMember.class).setParameter("bId", bId).getResultList();
    }

}
