package com.yuxh.blog.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.vo.BlogVo;

public interface BlogInfoService {

	List<BlogInfo> findAllBlogs();

    void details(BlogVo blogVo);

    BlogInfo getById(BlogVo blogVo);

    PageInfo<BlogInfo> findBlogs(BlogVo blogVo);
}
