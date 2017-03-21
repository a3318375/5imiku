package com.yuxh.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuxh.blog.dao.BlogInfoDao;
import com.yuxh.blog.model.BlogInfo;
import com.yuxh.blog.service.BlogInfoService;
import com.yuxh.blog.util.UUIDUtils;
import com.yuxh.blog.vo.BlogVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by TWCX on 2016/10/18.
 */
@Service
public class BlogInfoServiceImpl implements BlogInfoService {

    @Autowired
    private BlogInfoDao blogInfoDao;

    public List<BlogInfo> findAllBlogs() {
        return blogInfoDao.findAllBlogs();
    }

    @Override
    public void details(BlogVo blogVo) {
        BlogInfo blogInfo = new BlogInfo();
        String uuid = UUIDUtils.getUUID36();
        blogInfo.setBlogId(uuid);
        blogInfo.setBlogAuthor("瑶瑶");
        blogInfo.setBlogTitle(blogVo.getName());
        blogInfo.setTypeId("1");
        blogInfo.setCreateDate(new Date());
        blogInfo.setBlogAbstract(blogVo.getBlogAbstract());
        String path="D:/code/ideaproject/5imiku/src/main/webapp/upload/" + uuid + ".htm";
        blogInfo.setBlogUrl(uuid + ".htm");

        File file = new File(path);

        FileWriter fw = null;
        try {
            fw = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(blogVo.getContext());
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        blogInfoDao.insert(blogInfo);
    }

    @Override
    public BlogInfo getById(BlogVo blogVo) {
        BlogInfo blogInfo = blogInfoDao.getById(blogVo.getBlogId());
        return blogInfo;
    }

    @Override
    public PageInfo<BlogInfo> findBlogs(BlogVo blogVo) {

        PageHelper.startPage(blogVo.getPageNumber(), 5);
        List<BlogInfo> list = blogInfoDao.findBlogs(blogVo.getType());
        PageInfo<BlogInfo> page = new PageInfo<>(list, 5);
        return page;
    }
}
