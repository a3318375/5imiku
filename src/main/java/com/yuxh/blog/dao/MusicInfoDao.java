package com.yuxh.blog.dao;

import com.yuxh.blog.dao.base.BaseDao;
import com.yuxh.blog.model.MusicInfo;

import java.util.List;

/**
 * Created by Lenovo on 2017/6/22.
 */
public interface MusicInfoDao extends BaseDao<MusicInfo>{
    List<MusicInfo> list();
}
