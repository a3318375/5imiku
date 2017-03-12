package com.yuxh.blog.service.impl;

import com.yuxh.blog.dao.BlogInfoDao;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.service.BlogInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by TWCX on 2016/10/18.
 */
@Service
public class BlogInfoServiceImpl implements BlogInfoService {

    @Autowired
    private BlogInfoDao blogInfoDao;

    public List<BlogInfo> findAllBlogs() {
        return blogInfoDao.findAllBlogs();
    }
}
