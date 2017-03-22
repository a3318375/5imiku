package com.yuxh.blog.service.impl;

import com.yuxh.blog.dao.PageViewDao;
import com.yuxh.blog.model.PageView;
import com.yuxh.blog.service.PageViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by yuxh on 2017/3/22.
 */
@Service
public class PageViewServiceImpl implements PageViewService{

    @Autowired
    private PageViewDao pageViewDao;

    @Override
    public void save(PageView pageView) {
        pageViewDao.save(pageView);
    }
}
