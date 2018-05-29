package org.sang.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by sang on 2018/5/28.
 */
@RestController
public class HelloController {
    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }
}
