package com.yuxh.blog.vo;

/**
 * Created by Lenovo on 2017/3/20.
 */
public class BlogVo {

    private String blogId;
    private String name;
    private String type;
    private String blogAbstract;
    private String context;
    private String blogAuthor;
    private String blogCover;
    private int pageNumber;

    public String getBlogCover() {
        return blogCover;
    }

    public void setBlogCover(String blogCover) {
        this.blogCover = blogCover;
    }

    public String getBlogAuthor() {
        return blogAuthor;
    }

    public void setBlogAuthor(String blogAuthor) {
        this.blogAuthor = blogAuthor;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public String getBlogAbstract() {
        return blogAbstract;
    }

    public void setBlogAbstract(String blogAbstract) {
        this.blogAbstract = blogAbstract;
    }

    public String getBlogId() {
        return blogId;
    }

    public void setBlogId(String blogId) {
        this.blogId = blogId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }
}
