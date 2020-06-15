package com.project.gudok.controller;

import com.project.gudok.model.BMemberDTO;
import com.project.gudok.service.BMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {

    @Autowired
    private BMemberService bmemberService;

    @GetMapping("/member/new")
    public String createForm(Model model) {
        model.addAttribute("bmemberJoin", new BMemberDTO());
        return "member/BMemberJoin";
    }




}
