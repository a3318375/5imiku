package com.yuxh.blog.service;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.model.CommentInfo;
import com.yuxh.blog.vo.BlogVo;

import java.util.List;

/**
 * Created by yuxh on 2017/3/23.
 */
public interface CommentInfoService {

    List<CommentInfo> getByBlogId(String blogId);

    CommentInfo saveComment(BlogVo blogVo);

    PageInfo<CommentInfo> getComments(BlogVo blogVo);
}
