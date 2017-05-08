package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.NoticeInfo;

import java.util.List;

public interface NoticeInfoDao extends BaseDao<NoticeInfo>{

    List<NoticeInfo> findAllNotices();
}