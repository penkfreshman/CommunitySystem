package com.Csystem.communitysystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class LoginController {

    @PostMapping(value = "/user/login")
    public String Login(@RequestParam("username") String username, @RequestParam("password") String password,
                        Map<String,Object> map, HttpSession session){


        if ("admin".equals(username) && "123456".equals(password)) {
            session.setAttribute("username",username);
            return "redirect:/main.html";
        }else {
            map.put("msg","用户名密码错误！");
            return "login";
        }

    }
}
