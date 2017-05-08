package com.yuxh.blog.controller;

import com.yuxh.blog.model.JournalInfo;
import com.yuxh.blog.service.JournalInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Lenovo on 2017/5/8.
 */
@Controller
@RequestMapping("/journal")
public class JournalController {

    @Autowired
    private JournalInfoService journalInfoService;

    @RequestMapping()
    public String index(Model uiModel){
        List<JournalInfo> jlist = journalInfoService.findAllJournals();
        uiModel.addAttribute("jlist",jlist);
        return "journal";
    }

}
