package com.yuxh.blog.dao;

import com.yuxh.blog.model.BlogInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogInfoDao {

    List<BlogInfo> findAllBlogs();

    int insert(BlogInfo record);

    BlogInfo getById(String blogId);

    List<BlogInfo> findBlogs(@Param("typeId") String type);
}