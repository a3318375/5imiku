package com.yuxh.blog.service;

import com.yuxh.blog.model.NoticeInfo;

import java.util.List;

/**
 * Created by Lenovo on 2017/5/8.
 */
public interface NoticeInfoService {

    List<NoticeInfo> findAllNotices();
}
