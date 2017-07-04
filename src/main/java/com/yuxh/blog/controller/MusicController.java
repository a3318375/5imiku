package com.yuxh.blog.controller;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.model.MusicInfo;
import com.yuxh.blog.service.MusicInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Lenovo on 2017/6/6.
 */
@Controller
@RequestMapping("/music")
public class MusicController {

    @Autowired
    private MusicInfoService musicInfoService;


    @RequestMapping()
    public String toMusic(){
        return "music";
    }

    @RequestMapping("/list")
    @ResponseBody
    public PageInfo<MusicInfo> list(int pageNumber){
        PageInfo<MusicInfo> page = musicInfoService.list(pageNumber);
        return page;
    }

    @RequestMapping(value = "/details/{musicId}",  produces = "text/html")
    public String detials(@PathVariable Integer musicId, Model model){
         musicInfoService.detials(musicId,model);
        return "music_details";
    }
}
