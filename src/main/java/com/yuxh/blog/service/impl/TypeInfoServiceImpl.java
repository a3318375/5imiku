package com.yuxh.blog.service.impl;

import com.yuxh.blog.dao.TypeInfoDao;
import com.yuxh.blog.model.TypeInfo;
import com.yuxh.blog.service.TypeInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Lenovo on 2017/3/21.
 */
@Service
public class TypeInfoServiceImpl implements TypeInfoService {

    @Resource
    private TypeInfoDao TypeInfoDao;

    @Override
    public List<TypeInfo> findAllTypes() {
        return TypeInfoDao.findAllTypes();
    }
}
