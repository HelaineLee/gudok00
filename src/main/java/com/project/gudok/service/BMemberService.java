package com.project.gudok.service;

import com.project.gudok.entity.BMember;
import com.project.gudok.repository.BMemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.io.PrintWriter;
import java.util.List;

@Service
public class BMemberService {

    @Autowired
    private BMemberRepository bMemberRepository;

    @Transactional
    public String join(BMember bMember) {
        validateDuplicateMember(bMember);
        bMemberRepository.save(bMember);
        return bMember.getBId();
    }

    private void validateDuplicateMember(BMember bMember) {
        List<BMember> findMembers = bMemberRepository.findById(bMember.getBId());
        if(!findMembers.isEmpty()) {
            showMessage();
            throw new IllegalStateException("이미 존재하는 회원입니다.");
        }
    }

    private void showMessage() {

    }

    public List<BMember> findBMembers() {
        return bMemberRepository.findAll();
    }

    public BMember findOne(String memberId) {
        return bMemberRepository.findOne(memberId);
    }

}
