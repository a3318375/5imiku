package com.yuxh.blog.controller;

import java.util.List;
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
	public String index(Model uiModel){ 
		List<BlogInfo> list = blogInfoService.findAllBlogs();
		uiModel.addAttribute("list",list);
		return "index";
	}
}
