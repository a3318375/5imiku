package com.yuxh.blog.controller;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.model.CommentInfo;
import com.yuxh.blog.model.TypeInfo;
import com.yuxh.blog.service.BlogInfoService;
import com.yuxh.blog.service.CommentInfoService;
import com.yuxh.blog.service.TypeInfoService;
import com.yuxh.blog.util.ResultUtils;
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

    @Resource
    private CommentInfoService commentInfoService;


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


    @RequestMapping("/getComments")
    @ResponseBody
    public PageInfo<CommentInfo> getComments(BlogVo blogVo){
        PageInfo<CommentInfo> page = commentInfoService.getComments(blogVo);
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
        List<BlogInfo> blist = blogInfoService.getAboutBlog(blogInfo.getLableName());
        List<BlogInfo> clist = blogInfoService.getCasualBlog(blogInfo.getTypeId());
        List<TypeInfo> tlist = typeInfoService.findAllTypes();
        uiModel.addAttribute("tlist",tlist);
        uiModel.addAttribute("clist",clist);
        uiModel.addAttribute("blogInfo",blogInfo);
        uiModel.addAttribute("blist",blist);
        return "detail";
    }

    @RequestMapping(value = "/comment")
    @ResponseBody
    public CommentInfo details(BlogVo blogVo){
        CommentInfo commentInfo = commentInfoService.saveComment(blogVo);
        return commentInfo;
    }
}
