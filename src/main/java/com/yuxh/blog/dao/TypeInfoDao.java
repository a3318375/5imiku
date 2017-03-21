package com.yuxh.blog.dao;

import com.yuxh.blog.model.TypeInfo;

import java.util.List;

public interface TypeInfoDao {

    List<TypeInfo> findAllTypes();
}