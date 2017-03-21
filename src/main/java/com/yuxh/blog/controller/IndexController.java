package com.yuxh.blog.controller;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.vo.BlogVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.service.BlogInfoService;

@Controller
@RequestMapping("/")
public class IndexController {

	@Autowired
	private BlogInfoService blogInfoService;

	@RequestMapping()
	public String index(BlogVo blogVo,Model uiModel){
		PageInfo<BlogInfo> page = blogInfoService.findBlogs(blogVo);
		uiModel.addAttribute("page",page);
		return "home";
	}

	@RequestMapping("details")
	public String details(BlogVo blogVo){
		blogInfoService.details(blogVo);
		return "redirect:/";
	}

	@RequestMapping(value = "/{blogId}",  produces = "text/html")
	public String details1(BlogVo blogVo,Model uiModel){
		BlogInfo blogInfo = blogInfoService.getById(blogVo);
		uiModel.addAttribute("blogInfo",blogInfo);
		return "blog";
	}
}
