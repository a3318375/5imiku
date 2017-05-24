package com.yuxh.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuxh.blog.dao.JournalDateLineDao;
import com.yuxh.blog.model.JournalDateLine;
import com.yuxh.blog.service.JournalDateLineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lenovo on 2017/5/24.
 */
@Service
public class JournalDateLineServiceImpl implements JournalDateLineService {

    @Autowired
    private JournalDateLineDao journalDateLineDao;

    @Override
    public List<JournalDateLine> findAllJournals() {
        List<JournalDateLine> list = journalDateLineDao.findAllJournals();
        return list;
    }
}
