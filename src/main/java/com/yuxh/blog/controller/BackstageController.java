package com.yuxh.blog.controller;

import com.yuxh.blog.model.BlogInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Lenovo on 2017/3/21.
 */
@RequestMapping("/backstage")
@Controller
public class BackstageController {

    @RequestMapping()
    public String index(){
        return "backstage/index";
    }
}
