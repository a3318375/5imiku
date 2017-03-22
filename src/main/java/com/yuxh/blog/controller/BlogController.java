package com.yuxh.blog.controller;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.model.TypeInfo;
import com.yuxh.blog.service.BlogInfoService;
import com.yuxh.blog.service.TypeInfoService;
import com.yuxh.blog.vo.BlogVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Lenovo on 2017/3/21.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {

    @Resource
    private BlogInfoService blogInfoService;

    @Resource
    private TypeInfoService typeInfoService;


    @RequestMapping()
    public String index(Model uiModel){
        List<TypeInfo> list = typeInfoService.findAllTypes();
        uiModel.addAttribute("list",list);
        return "blog";
    }

    @RequestMapping("/json")
    @ResponseBody
    public PageInfo<BlogInfo> json(BlogVo blogVo){
        PageInfo<BlogInfo> page = blogInfoService.findBlogs(blogVo);
        return page;
    }

    @RequestMapping(value = "/{type}",  produces = "text/html")
    public String type(BlogVo blogVo, Model uiModel){
        PageInfo<BlogInfo> page = blogInfoService.findBlogs(blogVo);
        uiModel.addAttribute("page",page);
        return "blog";
    }

    @RequestMapping(value = "/details/{blogId}",  produces = "text/html")
    public String details(BlogVo blogVo,Model uiModel){
        BlogInfo blogInfo = blogInfoService.getById(blogVo);
        uiModel.addAttribute("blogInfo",blogInfo);
        return "detail";
    }
}
