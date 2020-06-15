package com.project.gudok.service;

import com.project.gudok.entity.QNA;
import com.project.gudok.repository.QNARepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QNAService {
    @Autowired
    private QNARepository qnaRepository;

    public void writeTest(){
        QNA qna = new QNA();
        qna.setSId("김하성");
        qna.setBId("야구용품");
        qna.setSubnum((long) 1);
        qna.setCNum("교환문의");
        qna.setQCont("바꿔주세요");
        qna.setQTitle("글러브 사이즈가 작아요");
        qnaRepository.write(qna);
    }
}
