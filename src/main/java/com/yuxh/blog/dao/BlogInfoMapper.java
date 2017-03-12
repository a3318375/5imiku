package com.yuxh.blog.dao;

import com.yuxh.blog.model.BlogInfo;

public interface BlogInfoMapper {

    int deleteByPrimaryKey(String blogId);

    int insert(BlogInfo record);

    int insertSelective(BlogInfo record);

    BlogInfo selectByPrimaryKey(String blogId);

    int updateByPrimaryKeySelective(BlogInfo record);

    int updateByPrimaryKey(BlogInfo record);
}