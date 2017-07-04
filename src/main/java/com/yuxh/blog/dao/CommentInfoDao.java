package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.CommentInfo;

import java.util.List;

public interface CommentInfoDao extends BaseDao<CommentInfo> {

    List<CommentInfo> getByBlogId(String blogId);

    int getCommentCount(String blogId);
}