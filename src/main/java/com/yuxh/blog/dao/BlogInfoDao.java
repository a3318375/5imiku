package com.yuxh.blog.dao;

import com.yuxh.blog.model.BlogInfo;

import java.util.List;

public interface BlogInfoDao {

    List<BlogInfo> findAllBlogs();
}