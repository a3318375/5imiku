package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.ViewLog;

public interface ViewLogDao extends BaseDao<ViewLog>{

    int getViewCount(Integer blogId);
}