package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.JournalInfo;

import java.util.List;

public interface JournalInfoDao extends BaseDao<JournalInfo>{

    List<JournalInfo> findAllJournals();
}