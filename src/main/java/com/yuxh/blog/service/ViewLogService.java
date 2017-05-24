package com.yuxh.blog.service;

import com.yuxh.blog.model.ViewLog;

/**
 * Created by Lenovo on 2017/5/23.
 */
public interface ViewLogService {

    void insert(ViewLog vl);

    int getViewCount(Integer blogId);
}
