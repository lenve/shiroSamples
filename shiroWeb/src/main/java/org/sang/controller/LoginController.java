package org.sang.controller;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by sang on 2018/5/29.
 */
@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(HttpServletRequest req, Model model) {
        String shiroLoginFailure = (String) req.getAttribute("shiroLoginFailure");
        System.out.println(shiroLoginFailure);
        if (UnknownAccountException.class.getName().equals(shiroLoginFailure)) {
            model.addAttribute("error", "账户不存在!");
        }
        if (IncorrectCredentialsException.class.getName().equals(shiroLoginFailure)) {
            model.addAttribute("error", "密码不正确!");
        }
        return "login";
    }

}
