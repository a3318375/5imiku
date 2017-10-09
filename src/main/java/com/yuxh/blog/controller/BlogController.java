package com.yuxh.blog.controller;

import com.github.pagehelper.PageInfo;
import com.qq.connect.javabeans.qzone.UserInfoBean;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.model.CommentInfo;
import com.yuxh.blog.model.TypeInfo;
import com.yuxh.blog.service.BlogInfoService;
import com.yuxh.blog.service.CommentInfoService;
import com.yuxh.blog.service.TypeInfoService;
import com.yuxh.blog.util.ResultUtils;
import com.yuxh.blog.vo.BlogVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
        List<BlogInfo> rlist = blogInfoService.findRecommendBlogs();
        uiModel.addAttribute("rlist",rlist);
        uiModel.addAttribute("list",list);
        return "blog";
    }

    @RequestMapping("/search")
    public String search(BlogVo blogVo,Model uiModel){
        List<TypeInfo> list = typeInfoService.findAllTypes();
        uiModel.addAttribute("list",list);
        uiModel.addAttribute("blogVo",blogVo);
        List<BlogInfo> rlist = blogInfoService.findRecommendBlogs();
        uiModel.addAttribute("rlist",rlist);
        return "blog_search";
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
    public String details(BlogVo blogVo,Model uiModel,HttpServletRequest request){
        String ip = getIpAddr(request);
        blogInfoService.details(ip,blogVo,uiModel);


        return "detail";
    }

    public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("X-Real-IP");
        if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
            return ip;
        }
        ip = request.getHeader("X-Forwarded-For");
        if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
            //多次反向代理后会有多个IP值，第一个为真实IP
            int index = ip.indexOf(',');
            if (index != -1) {
                return ip.substring(0, index);
            } else {
                return ip;
            }
        } else {
            return request.getRemoteAddr();
        }
    }
}
