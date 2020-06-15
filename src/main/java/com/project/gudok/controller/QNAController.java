package com.project.gudok.controller;

import com.project.gudok.entity.QNA;
import com.project.gudok.repository.QNARepository;
import com.project.gudok.service.QNAService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class QNAController {

    @Autowired
    QNAService qnaService;
    @Autowired
    QNARepository qnaRepository;

    @PostMapping("/qnaList")
    public String writeList(Model model){
        qnaService.writeTest();
        List<QNA> qnas = qnaRepository.qnaList();
        model.addAttribute("list", qnas);
        return "qna_list";
    }
}
