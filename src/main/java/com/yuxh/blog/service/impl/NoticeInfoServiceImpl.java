package com.yuxh.blog.service.impl;

import com.yuxh.blog.dao.NoticeInfoDao;
import com.yuxh.blog.model.NoticeInfo;
import com.yuxh.blog.service.NoticeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lenovo on 2017/5/8.
 */
@Service
public class NoticeInfoServiceImpl implements NoticeInfoService {

    @Autowired
    private NoticeInfoDao noticeInfoDao;

    @Override
    public List<NoticeInfo> findAllNotices() {
        return noticeInfoDao.findAllNotices();
    }
}
