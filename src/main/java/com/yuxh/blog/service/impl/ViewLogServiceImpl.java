package com.yuxh.blog.service.impl;

import com.yuxh.blog.dao.ViewLogDao;
import com.yuxh.blog.model.ViewLog;
import com.yuxh.blog.service.ViewLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Lenovo on 2017/5/23.
 */
@Service
public class ViewLogServiceImpl implements ViewLogService {

    @Autowired
    private ViewLogDao viewLogDao;

    @Override
    public void insert(ViewLog vl) {
        viewLogDao.insert(vl);
    }

    @Override
    public int getViewCount(Integer blogId) {
        return viewLogDao.getViewCount(blogId);
    }
}
