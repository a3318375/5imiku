<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>绮梦楼 - 文章专栏 - ${blogInfo.blogTitle}</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/bktb.png" type="image/x-icon">
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resources/blg/css/global.css" rel="stylesheet" />
    <!-- 比较好用的代码着色插件 -->
    <link href="${pageContext.request.contextPath}/resources/blg/css/prettify.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resources/blg/css/detail.css" rel="stylesheet" />
    <style type="text/css">
        #blogContent img{ max-width:740px;}
    </style>
</head>
<body>
    <input type="hidden" id="userInfo" value="${sessionScope.userInfo}">
    <!-- 导航 -->
    <%@ include file="nav_head.jsp"%>
    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <div class="blog-container">
            <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="home.html" title="网站首页">网站首页</a>
                <a href="article.html" title="文章专栏">文章专栏</a>
                <a><cite>${blogInfo.blogTitle}</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="blog-main-left">
                    <!-- 文章内容（使用Kingeditor富文本编辑器发表的） -->
                    <div class="article-detail shadow mhtx">
                       <div class="article-detail-title">
                            ${musicInfo.musicTitle}
                        </div>
                        <div class="article-detail-info" style="color: #5ea3f7">
                            <div>
                                <i class="fa fa-calendar"></i>
                                <span>编辑时间：<fmt:formatDate value="${musicInfo.createDate}" type="both"/></span>
                            </div>
                            <div style="margin-top: 2px;">
                                <i class="fa fa-user-circle-o"></i>
                                <span>作者：${musicInfo.musicAuthor}</span>
                                <i class="fa fa-comments-o" style="margin-left: 15px"></i>
                                <span>评论数：${commentCount}</span>
                            </div>
                        </div>
                        <div class="article-detail-content" id="blogContent">
                                ${musicInfo.musicContent}
                                ${musicInfo.musicUrl}
                        </div>
                    </div>
                    <!-- 评论区域 -->
                    <div class="blog-module shadow mhtx" style="box-shadow: 0 1px 8px #a6a6a6;" id="commentList">
                        <fieldset class="layui-elem-field layui-field-title" style="margin-bottom:0">
                            <legend>来说两句吧</legend>
                            <div class="layui-field-box">
                                <form class="layui-form blog-editor" id="commentForm" action="/blog/comment" method="post">
                                    <div class="layui-form-item">
                                        <input type="hidden" id="blogId" name="blogUuid" value="${musicInfo.musicUuid}"/>
                                        <input type="hidden" id="context" name="context"/>
                                        <textarea name="editorContent" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea layui-hide"></textarea>
                                    </div>
                                    <div class="layui-form-item">
                                        <button class="layui-btn" lay-submit="formRemark" lay-filter="formRemark">提交评论</button>
                                    </div>
                                </form>
                            </div>
                        </fieldset>
                        <div class="blog-module-title">最新评论</div>
                    </div>
                </div>
                <div class="blog-main-right">
                    <!--右边悬浮 平板或手机设备显示-->
                    <div class="category-toggle"><i class="fa fa-chevron-left"></i></div><!--这个div位置不能改，否则需要添加一个div来代替它或者修改样式表-->
                    <div class="article-category shadow">
                        <div class="article-category-title">分类导航</div>
                        <!-- 点击分类后的页面和artile.html页面一样，只是数据是某一类别的 -->
                        <c:forEach items="${tlist}" var="type">
                            <a href="/blog/search?type=${type.typeId}">${type.typeName}</a>
                        </c:forEach>
                        <div class="clear"></div>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">相似文章</div>
                        <ul class="fa-ul blog-module-ul">
                            <c:forEach items="${blist}" var="blog">
                                <li><i class="fa-li fa fa-hand-o-right"></i><a href="${pageContext.request.contextPath}/blog/details/${blog.blogId}">${blog.blogTitle}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">随便看看</div>
                        <ul class="fa-ul blog-module-ul">
                            <c:forEach items="${clist}" var="blog">
                                <li><i class="fa-li fa fa-hand-o-right"></i><a href="${pageContext.request.contextPath}/blog/details/${blog.blogId}">${blog.blogTitle}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
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
    <!-- 自定义全局脚本 -->
    <script src="${pageContext.request.contextPath}/resources/blg/js/global.js"></script>
    <!-- 比较好用的代码着色插件 -->
    <script src="${pageContext.request.contextPath}/resources/blg/js/prettify.js"></script>
    <!-- 本页脚本 -->
    <script src="${pageContext.request.contextPath}/resources/blg/js/detail.js"></script>
</body>
</html>