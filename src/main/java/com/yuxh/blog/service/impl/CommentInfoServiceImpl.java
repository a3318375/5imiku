package com.yuxh.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuxh.blog.dao.CommentInfoDao;
import com.yuxh.blog.model.CommentInfo;
import com.yuxh.blog.service.CommentInfoService;
import com.yuxh.blog.vo.BlogVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by yuxh on 2017/3/23.
 */
@Service
public class CommentInfoServiceImpl implements CommentInfoService {

    @Resource
    private CommentInfoDao commentInfoDao;

    @Override
    public List<CommentInfo> getByBlogId(Integer blogId) {
        return commentInfoDao.getByBlogId(blogId);
    }

    @Override
    public CommentInfo saveComment(BlogVo blogVo) {
        CommentInfo commentInfo = new CommentInfo();
        commentInfo.setBlogId(blogVo.getBlogId());
        commentInfo.setCommentText(blogVo.getContext());
        commentInfo.setCreateDate(new Date());
        commentInfo.setUserId(blogVo.getUserId());
        commentInfoDao.insert(commentInfo);
        return commentInfo;
    }

    @Override
    public PageInfo<CommentInfo> getComments(BlogVo blogVo) {
        PageHelper.startPage(blogVo.getPageNumber(), 5);
        List<CommentInfo> list = commentInfoDao.getByBlogId(blogVo.getBlogId());
        PageInfo<CommentInfo> page = new PageInfo<>(list, 5);
        return page;
    }
}
