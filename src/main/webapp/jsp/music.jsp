<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>绮梦楼 - 文章专栏</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/bktb.png" type="image/x-icon">
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resources/blg/css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resources/blg/css/article.css" rel="stylesheet" />

    <link href="${pageContext.request.contextPath}/resources/blg/css/animate.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/blg/css/imagehover.min.css" rel="stylesheet" />
</head>
<body>
    <!-- 导航 -->
    <%@ include file="nav_head.jsp"%>
    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <div class="blog-container">
            <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="/" title="网站首页">网站首页</a>
                <a><cite>音乐分享</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="demo" id="musicList">
                    <%--<figure class="imghvr-zoom-in">
                        <img src="http://p4.music.126.net/4d8hnmrMxDrKnn_0i1JqyA==/1728432278871211.jpg?param=300y225" alt="example-image">
                        <figcaption>
                            <h3>歌名：YOU</h3>
                            <p>歌手：Approaching Nirvana</p>
                            <p>美妙的纯音乐，希望大家喜欢</p>
                        </figcaption>
                        <a href="javascript:;"></a>
                    </figure>--%>
                    
                </div>
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
    <script src="${pageContext.request.contextPath}/resources/blg/js/music.js"></script>
</body>
</html>