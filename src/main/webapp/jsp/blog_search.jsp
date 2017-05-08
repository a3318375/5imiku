<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>绮梦楼 - 文章专栏 - 搜索</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/blg/images/tx.jpg" type="image/x-icon">
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resources/blg/css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resources/blg/css/article.css" rel="stylesheet" />
</head>
<body>
    <input type="hidden" value="${blogVo.name}" id="searchName"/>
    <input type="hidden" value="${blogVo.type}" id="searchType"/>
    <!-- 导航 -->
    <nav class="blog-nav layui-header">
        <div class="blog-container">
            <!-- QQ互联登陆 -->
            <a href="javascript:;" class="blog-user">
                <i class="fa fa-qq"></i>
            </a>
            <a href="javascript:;" class="blog-user layui-hide">
                <img src="${pageContext.request.contextPath}/resources/blg/images/Absolutely.jpg" alt="Absolutely" title="Absolutely" />
            </a>
            <!-- 不落阁 -->
            <a class="blog-logo" href="home.jsp">绮梦楼</a>
            <!-- 导航菜单 -->
            <ul class="layui-nav" lay-filter="nav">
                <li class="layui-nav-item layui-this">
                    <a href="/"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
                </li>
                <li class="layui-nav-item">
                    <a href="/blog"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
                </li>
<%--                <li class="layui-nav-item">
                    <a href="/zy"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
                </li>--%>
                <li class="layui-nav-item">
                    <a href="/journal"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;点点滴滴</a>
                </li>
                <li class="layui-nav-item">
                    <a href="/about"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
                </li>
            </ul>
            <!-- 手机和平板的导航开关 -->
            <a class="blog-navicon" href="javascript:">
                <i class="fa fa-navicon"></i>
            </a>
        </div>
    </nav>
    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <div class="blog-container">
            <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="/" title="网站首页">网站首页</a>
                <a href="/blog" title="文章专栏"><cite>文章专栏</cite></a>
                <a><cite>搜索</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="blog-main-left" id="blogList">
                </div>
                <div class="blog-main-right">
                    <div class="blog-search">
                        <form class="layui-form" action="/blog/search">
                            <div class="layui-form-item">
                                <div class="search-keywords  shadow">
                                    <input type="text" name="name" lay-verify="required" placeholder="输入关键词搜索" autocomplete="off" class="layui-input">
                                </div>
                                <div class="search-submit  shadow">
                                    <button class="search-btn" lay-submit="formSearch" lay-filter="formSearch"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="article-category shadow">
                        <div class="article-category-title">分类导航</div>
                        <c:forEach items="${list}" var="type">
                            <a href="/blog/search?type=${type.typeId}">${type.typeName}</a>
                        </c:forEach>
                        <div class="clear"></div>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">作者推荐</div>
                        <ul class="fa-ul blog-module-ul">
                            <c:forEach items="${rlist}" var="blog">
                                <li><i class="fa-li fa fa-hand-o-right"></i><a href="/blog/details/${blog.blogId}">${blog.blogTitle}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">随便看看</div>
                        <ul class="fa-ul blog-module-ul">
                            <c:forEach items="${rlist}" var="blog">
                                <li><i class="fa-li fa fa-hand-o-right"></i><a href="/blog/details/${blog.blogId}">${blog.blogTitle}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!--右边悬浮 平板或手机设备显示-->
                    <div class="category-toggle"><i class="fa fa-chevron-left"></i></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer">
        <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.5imiku.com">绮梦楼</a><span>All rights reserved.</span></p>
        <p><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备17021290号-1</a></p>
    </footer>
    <!--侧边导航-->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item">
            <a href="/"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="/blog"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
        </li>
        <li class="layui-nav-item">
            <a href="/journal"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;点点滴滴</a>
        </li>
        <li class="layui-nav-item">
            <a href="/about"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
        </li>
    </ul>
    <!--分享窗体-->
    <div class="blog-share layui-hide">
        <div class="blog-share-body">
            <div style="width: 200px;height:100%;">
                <div class="bdsharebuttonbox">
                    <a class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                    <a class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                    <a class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                    <a class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
                </div>
            </div>
        </div>
    </div>
    <!--遮罩-->
    <div class="blog-mask animated layui-hide"></div>
    <!-- layui.js -->
    <script src="${pageContext.request.contextPath}/resources/blg/plug/layui/layui.js"></script>
    <!-- 全局脚本 -->
    <script src="${pageContext.request.contextPath}/resources/blg/js/search.js"></script>
</body>
</html>