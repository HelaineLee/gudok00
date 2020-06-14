package com.project.gudok.controller;

import com.project.gudok.service.BMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MemberController {

    @Autowired
    private BMemberService bmemberService;


}
