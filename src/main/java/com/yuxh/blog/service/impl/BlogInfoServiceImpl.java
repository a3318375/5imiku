package com.yuxh.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuxh.blog.dao.BlogInfoDao;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.model.PageView;
import com.yuxh.blog.service.BlogInfoService;
import com.yuxh.blog.service.PageViewService;
import com.yuxh.blog.util.DateUtils;
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
    public void details(BlogVo blogVo) {
        BlogInfo blogInfo = new BlogInfo();
        String uuid = UUIDUtils.getUUID36();
        savePageView(uuid,blogVo.getIp());
        blogInfo.setBlogId(uuid);
        blogInfo.setBlogAuthor(blogVo.getBlogAuthor());
        blogInfo.setBlogTitle(blogVo.getName());
        blogInfo.setTypeId(blogVo.getType());
        blogInfo.setBlogCover(blogVo.getBlogCover());
        blogInfo.setCreateDate(new Date());
        blogInfo.setBlogAbstract(blogVo.getBlogAbstract());
        String date  = DateUtils.get8Date();
        String path="C:/code/workspace/5imiku/build/libs/exploded/5imiku-1.0-SNAPSHOT.war/upload/htm/"+ date + "/";
        String filename = uuid + ".jsp";
        blogInfo.setBlogUrl("/upload/htm/"+ date + "/" + uuid + ".jsp");
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        file = new File(path + filename);
        FileWriter fw = null;
        try {
            OutputStreamWriter writerStream = new OutputStreamWriter(new FileOutputStream(file),"UTF-8");
            BufferedWriter bw = new BufferedWriter(writerStream);
            bw.write("<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\"%>" + blogVo.getContext());
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        blogInfoDao.insert(blogInfo);
    }

    private void savePageView(String blogId,String ip) {
        PageView pageView = new PageView();
        pageView.setBlogId(blogId);
        pageView.setPageViewDate(new Date());
        pageView.setViewIp(ip);
        pageViewService.save(pageView);
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

}
