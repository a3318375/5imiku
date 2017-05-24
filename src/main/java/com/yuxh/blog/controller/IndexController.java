package com.yuxh.blog.controller;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.model.NoticeInfo;
import com.yuxh.blog.service.NoticeInfoService;
import com.yuxh.blog.vo.BlogVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.service.BlogInfoService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class IndexController {

	@Autowired
	private BlogInfoService blogInfoService;
	@Autowired
	private NoticeInfoService noticeInfoService;

	@RequestMapping()
	public String index(Model uiModel){
		List<BlogInfo> rlist = blogInfoService.findRecommendBlogs();
		List<NoticeInfo> nlist = noticeInfoService.findAllNotices();
		uiModel.addAttribute("rlist",rlist);
		uiModel.addAttribute("nlist",nlist);
		return "home";
	}

	@RequestMapping(value = "/{blogId}",  produces = "text/html")
	public String details1(BlogVo blogVo,Model uiModel){
		BlogInfo blogInfo = blogInfoService.getById(blogVo);
		uiModel.addAttribute("blogInfo",blogInfo);
		return "blog";
	}

}
