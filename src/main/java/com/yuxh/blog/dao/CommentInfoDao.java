package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.CommentInfo;

import java.util.List;

public interface CommentInfoDao extends BaseDao<CommentInfo> {
    List<CommentInfo> getByBlogId(Integer blogId);

    int getCommentCount(Integer blogId);
}