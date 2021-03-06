package com.yuxh.blog.dao;

import com.yuxh.blog.model.PageView;

public interface PageViewDao {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table page_view
     *
     * @mbggenerated Wed Mar 22 23:46:03 CST 2017
     */
    int deleteByPrimaryKey(Integer pageViewId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table page_view
     *
     * @mbggenerated Wed Mar 22 23:46:03 CST 2017
     */
    int save(PageView record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table page_view
     *
     * @mbggenerated Wed Mar 22 23:46:03 CST 2017
     */
    int insertSelective(PageView record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table page_view
     *
     * @mbggenerated Wed Mar 22 23:46:03 CST 2017
     */
    PageView selectByPrimaryKey(Integer pageViewId);

    int getByBlogId(String blogId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table page_view
     *
     * @mbggenerated Wed Mar 22 23:46:03 CST 2017
     */
    int updateByPrimaryKeySelective(PageView record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table page_view
     *
     * @mbggenerated Wed Mar 22 23:46:03 CST 2017
     */
    int updateByPrimaryKey(PageView record);
}