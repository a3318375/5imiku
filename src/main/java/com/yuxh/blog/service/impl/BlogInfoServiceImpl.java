package com.yuxh.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuxh.blog.dao.BlogInfoDao;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.model.PageView;
import com.yuxh.blog.service.BlogInfoService;
import com.yuxh.blog.service.PageViewService;
import com.yuxh.blog.util.DateUtils;
import com.yuxh.blog.util.Toolkits;
import com.yuxh.blog.util.UUIDUtils;
import com.yuxh.blog.vo.BlogVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.util.Date;
import java.util.List;

/**
 * Created by TWCX on 2016/10/18.
 */
@Service
public class BlogInfoServiceImpl implements BlogInfoService {

    @Autowired
    private BlogInfoDao blogInfoDao;
    @Autowired
    private PageViewService pageViewService;

    public List<BlogInfo> findAllBlogs() {
        return blogInfoDao.findAllBlogs();
    }

    @Override
    public BlogInfo getById(BlogVo blogVo) {
        BlogInfo blogInfo = blogInfoDao.getById(blogVo.getBlogId());
        return blogInfo;
    }

    @Override
    public PageInfo<BlogInfo> findBlogs(BlogVo blogVo) {

        PageHelper.startPage(blogVo.getPageNumber(), 5);
        List<BlogInfo> list = blogInfoDao.findBlogs(blogVo.getType());
        PageInfo<BlogInfo> page = new PageInfo<>(list, 5);
        return page;
    }

    @Override
    public List<BlogInfo> getAboutBlog(String lableName) {
        return blogInfoDao.getAboutBlog(lableName);
    }

    @Override
    public List<BlogInfo> getCasualBlog(String typeId) {
        return blogInfoDao.getCasualBlog(typeId);
    }

}
