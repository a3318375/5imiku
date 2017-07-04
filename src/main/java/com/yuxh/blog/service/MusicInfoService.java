package com.yuxh.blog.service;

import com.github.pagehelper.PageInfo;
import com.yuxh.blog.model.MusicInfo;
import org.springframework.ui.Model;

/**
 * Created by Lenovo on 2017/6/22.
 */
public interface MusicInfoService {
    PageInfo<MusicInfo> list(int pageNumber);

    MusicInfo detials(Integer musicId,Model model);
}
