package com.yuxh.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuxh.blog.dao.MusicInfoDao;
import com.yuxh.blog.model.MusicInfo;
import com.yuxh.blog.service.CommentInfoService;
import com.yuxh.blog.service.MusicInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

/**
 * Created by Lenovo on 2017/6/22.
 */
@Service
public class MusicInfoServiceImpl implements MusicInfoService {

    @Autowired
    private MusicInfoDao musicInfoDao;
    @Autowired
    private CommentInfoService commentInfoService;

    @Override
    public PageInfo<MusicInfo> list(int pageNumber) {
        PageHelper.startPage(pageNumber, 5);
        List<MusicInfo> list = musicInfoDao.list();
        PageInfo<MusicInfo> page = new PageInfo<>(list, 5);
        return page;
    }

    @Override
    public MusicInfo detials(Integer musicId,Model model) {
        MusicInfo musicInfo = musicInfoDao.selectByPrimaryKey(musicId);
        int commentCount = commentInfoService.getCommentCount(musicInfo.getMusicUuid());
        model.addAttribute("musicInfo",musicInfo);
        model.addAttribute("commentCount",commentCount);
        return musicInfo;
    }
}
