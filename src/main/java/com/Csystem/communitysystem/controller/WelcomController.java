package com.Csystem.communitysystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomController {
    @RequestMapping("/welcome")
    public String hello(){
        return "welcome";
    }

}
