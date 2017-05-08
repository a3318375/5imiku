package com.yuxh.blog.service.impl;

import com.yuxh.blog.dao.JournalInfoDao;
import com.yuxh.blog.model.JournalInfo;
import com.yuxh.blog.service.JournalInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lenovo on 2017/5/8.
 */
@Service
public class JournalInfoServiceImpl implements JournalInfoService {

    @Autowired
    private JournalInfoDao journalInfoDao;

    @Override
    public List<JournalInfo> findAllJournals() {
        return journalInfoDao.findAllJournals();
    }
}
