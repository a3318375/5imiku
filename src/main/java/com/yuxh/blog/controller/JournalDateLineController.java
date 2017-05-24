package com.yuxh.blog.controller;

import com.yuxh.blog.model.JournalDateLine;
import com.yuxh.blog.service.JournalDateLineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Lenovo on 2017/5/24.
 */
@Controller
@RequestMapping("/journal")
public class JournalDateLineController {

    @Autowired
    private JournalDateLineService journalDateLineService;

    @RequestMapping()
    public String index() {
        return "journal";
    }

    @RequestMapping("/list")
    @ResponseBody
    public List<JournalDateLine> list() {
        List<JournalDateLine> list = journalDateLineService.findAllJournals();
        return list;
    }
}
