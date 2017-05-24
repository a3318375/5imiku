package com.yuxh.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuxh.blog.dao.BlogInfoDao;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.model.PageView;
import com.yuxh.blog.model.TypeInfo;
import com.yuxh.blog.model.ViewLog;
import com.yuxh.blog.service.*;
import com.yuxh.blog.util.DateUtils;
import com.yuxh.blog.util.Toolkits;
import com.yuxh.blog.util.UUIDUtils;
import com.yuxh.blog.vo.BlogVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
    private TypeInfoService typeInfoService;
    @Autowired
    private ViewLogService viewLogService;
    @Autowired
    private CommentInfoService commentInfoService;

    public List<BlogInfo> findAllBlogs() {
        return blogInfoDao.findAllBlogs();
    }

    @Override
    public BlogInfo getById(BlogVo blogVo) {
        BlogInfo blogInfo = blogInfoDao.selectByPrimaryKey(blogVo.getBlogId());
        return blogInfo;
    }

    @Override
    public PageInfo<BlogInfo> findBlogs(BlogVo blogVo) {
        if(blogVo != null){
            if(StringUtils.isBlank(blogVo.getType())){
                blogVo.setType(null);
            }
            if(StringUtils.isBlank(blogVo.getName())){
                blogVo.setName(null);
            }
        }
        PageHelper.startPage(blogVo.getPageNumber(), 5);
        List<BlogInfo> list = blogInfoDao.findBlogs(blogVo.getType(),blogVo.getName());
        PageInfo<BlogInfo> page = new PageInfo<>(list, 5);
        return page;
    }

    @Override
    public List<BlogInfo> getAboutBlog(String lableName) {
        return blogInfoDao.getAboutBlog(lableName);
    }

    @Override
    public List<BlogInfo> getCasualBlog(Integer typeId) {
        return blogInfoDao.getCasualBlog(typeId);
    }

    @Override
    public List<BlogInfo> findTopBlogs() {
        return blogInfoDao.findTopBlogs();
    }

    @Override
    public List<BlogInfo> findRecommendBlogs() {
        return blogInfoDao.findRecommendBlogs();
    }

    @Override
    public void details(String ip, BlogVo blogVo, Model uiModel) {
        BlogInfo blogInfo = blogInfoDao.selectByPrimaryKey(blogVo.getBlogId());
        List<BlogInfo> blist = blogInfoDao.getAboutBlog(blogInfo.getLableName());
        List<BlogInfo> clist = blogInfoDao.getCasualBlog(blogInfo.getTypeId());
        List<TypeInfo> tlist = typeInfoService.findAllTypes();
        uiModel.addAttribute("tlist",tlist);
        uiModel.addAttribute("clist",clist);
        uiModel.addAttribute("blogInfo",blogInfo);
        uiModel.addAttribute("blist",blist);

        ViewLog vl = new ViewLog();
        vl.setBlogId(blogInfo.getBlogId());
        vl.setViewDate(new Date());
        vl.setViewIp(ip);
        viewLogService.insert(vl);

        int viewCount = viewLogService.getViewCount(blogInfo.getBlogId());
        uiModel.addAttribute("viewCount",viewCount);
    }

}
