package com.yuxh.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lenovo on 2017/5/4.
 */
@Controller
@RequestMapping("/about")
public class AboutController {

    @RequestMapping()
    public String index(){
        return "about";
    }
}
