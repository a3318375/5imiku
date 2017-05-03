package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.BlogInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogInfoDao extends BaseDao<BlogInfo> {

    List<BlogInfo> findAllBlogs();

    List<BlogInfo> findBlogs(@Param("typeId") String type);

    List<BlogInfo> getCasualBlog(Integer typeId);

    List<BlogInfo> getAboutBlog(String lableName);

    List<BlogInfo> findRecommendBlogs();

    List<BlogInfo> findTopBlogs();
}