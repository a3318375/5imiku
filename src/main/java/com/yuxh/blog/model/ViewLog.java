package com.yuxh.blog.model;

import java.util.Date;

public class ViewLog {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column view_log.view_id
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    private Integer viewId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column view_log.view_ip
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    private String viewIp;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column view_log.view_date
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    private Date viewDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column view_log.blog_id
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    private Integer blogId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column view_log.view_id
     *
     * @return the value of view_log.view_id
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public Integer getViewId() {
        return viewId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column view_log.view_id
     *
     * @param viewId the value for view_log.view_id
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public void setViewId(Integer viewId) {
        this.viewId = viewId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column view_log.view_ip
     *
     * @return the value of view_log.view_ip
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public String getViewIp() {
        return viewIp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column view_log.view_ip
     *
     * @param viewIp the value for view_log.view_ip
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public void setViewIp(String viewIp) {
        this.viewIp = viewIp == null ? null : viewIp.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column view_log.view_date
     *
     * @return the value of view_log.view_date
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public Date getViewDate() {
        return viewDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column view_log.view_date
     *
     * @param viewDate the value for view_log.view_date
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public void setViewDate(Date viewDate) {
        this.viewDate = viewDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column view_log.blog_id
     *
     * @return the value of view_log.blog_id
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public Integer getBlogId() {
        return blogId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column view_log.blog_id
     *
     * @param blogId the value for view_log.blog_id
     *
     * @mbggenerated Tue May 23 14:18:35 CST 2017
     */
    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }
}