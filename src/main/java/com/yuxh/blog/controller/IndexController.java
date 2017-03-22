package com.yuxh.blog.controller;

import java.util.List;

import com.github.pagehelper.PageInfo;
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

	@RequestMapping()
	public String index(BlogVo blogVo,Model uiModel){
		PageInfo<BlogInfo> page = blogInfoService.findBlogs(blogVo);
		uiModel.addAttribute("page",page);
		return "home";
	}

	@RequestMapping("details")
	public String details(BlogVo blogVo,HttpServletRequest request){
		String ip = getIpAddr(request);
		blogVo.setIp(ip);
		blogInfoService.details(blogVo);
		return "redirect:/";
	}

	@RequestMapping(value = "/{blogId}",  produces = "text/html")
	public String details1(BlogVo blogVo,Model uiModel){
		BlogInfo blogInfo = blogInfoService.getById(blogVo);
		uiModel.addAttribute("blogInfo",blogInfo);
		return "blog";
	}

	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("X-Real-IP");
		if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
			return ip;
		}
		ip = request.getHeader("X-Forwarded-For");
		if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
			// 多次反向代理后会有多个IP值，第一个为真实IP。
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
