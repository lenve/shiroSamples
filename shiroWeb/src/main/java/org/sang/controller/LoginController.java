package org.sang.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sang on 2018/5/29.
 */
@Controller
public class LoginController {

    @RequestMapping("/")
    public String index() {
        Subject subject = SecurityUtils.getSubject();
        subject.checkRole("admin");
        subject.checkPermission("book:info");
        return "success";
    }

    @RequestMapping("/login")
    public String login(String username, String password) {
        Subject subject = SecurityUtils.getSubject();
        try {
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            token.setRememberMe(true);
            subject.login(token);
            return "success";
        } catch (AuthenticationException e) {
        }
        return "login";
    }
}
