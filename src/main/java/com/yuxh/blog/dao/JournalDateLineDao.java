package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.JournalDateLine;

import java.util.List;

/**
 * Created by Lenovo on 2017/5/24.
 */
public interface JournalDateLineDao extends BaseDao<JournalDateLine>{
    List<JournalDateLine> findAllJournals();
}
