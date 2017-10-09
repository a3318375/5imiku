package com.yuxh.blog.controller;

import com.github.pagehelper.PageInfo;
import com.qq.connect.javabeans.qzone.UserInfoBean;
import com.yuxh.blog.model.CommentInfo;
import com.yuxh.blog.service.CommentInfoService;
import com.yuxh.blog.vo.BlogVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.Action;

/**
 * Created by Lenovo on 2017/5/26.
 */
@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentInfoService commentInfoService;

    @RequestMapping(value = "/save")
    public String details(BlogVo blogVo, HttpServletRequest request){
        UserInfoBean userInfoBean = (UserInfoBean) request.getSession().getAttribute("userInfo");
        if(userInfoBean == null){
            return null;
        }
        blogVo.setUserInfoBean(userInfoBean);
        commentInfoService.saveComment(blogVo);
        return "redirect:/about";
    }

    @RequestMapping("/getComments")
    @ResponseBody
    public PageInfo<CommentInfo> getComments(BlogVo blogVo){
        PageInfo<CommentInfo> page = commentInfoService.getComments(blogVo);
        return page;
    }
}
