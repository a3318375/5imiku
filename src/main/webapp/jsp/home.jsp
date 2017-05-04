﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>绮梦楼</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/blg/images/Logo_40.png" type="image/x-icon">
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resources/blg/css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resources/blg/css/home.css" rel="stylesheet" />
</head>
<body>
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
            <a class="blog-logo" href="/">绮梦楼</a>
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
                </li>
                <li class="layui-nav-item">
                    <a href="/dddd"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;点点滴滴</a>
                </li>--%>
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
        <!-- canvas -->
        <canvas id="canvas-banner" style="background: #393D49;"></canvas>
        <!--为了及时效果需要立即设置canvas宽高，否则就在home.js中设置-->
        <script type="text/javascript">
            var canvas = document.getElementById('canvas-banner');
            canvas.width = window.document.body.clientWidth - 10;//减去滚动条的宽度
            if (screen.width >= 992) {
                canvas.height = window.innerHeight * 1 / 3;
            } else {
                canvas.height = window.innerHeight * 2 / 7;
            }
        </script>
        <!-- 这个一般才是真正的主体内容 -->
        <div class="blog-container">
            <div class="blog-main">
                <!-- 网站公告提示 -->
                <div class="home-tips shadow">
                    <i style="float:left;line-height:17px;" class="fa fa-volume-up"></i>
                    <div class="home-tips-container">
                        <span style="color: #009688">偷偷告诉大家，本博客的后台管理也正在制作，为大家准备了游客专用账号！</span>
                        <span style="color: red">网站新增留言回复啦！使用QQ登陆即可回复，人人都可以回复！</span>
                        <span style="color: red">如果你觉得网站做得还不错，来Fly社区点个赞吧！<a href="http://fly.layui.com/case/2017/" target="_blank" style="color:#01AAED">点我前往</a></span>
                        <span style="color: #009688">不落阁 &nbsp;—— &nbsp;一个.NET程序员的个人博客，新版网站采用Layui为前端框架，目前正在建设中！</span>
                    </div>
                </div>
                <!--左边文章列表-->
                    <div class="blog-main-left" id="blogList">
                    </div>
                <!--右边小栏目-->
                <div class="blog-main-right">
                    <div class="blogerinfo shadow">
                        <div class="blogerinfo-figure">
                            <img src="${pageContext.request.contextPath}/resources/img/tx.png" alt="Absolutely" />
                        </div>
                        <p class="blogerinfo-nickname">小皓</p>
                        <p class="blogerinfo-introduce">90后java开发工程师</p>
                        <p class="blogerinfo-location"><i class="fa fa-location-arrow"></i>&nbsp;北京</p>
                        <hr />
                        <div class="blogerinfo-contact">
                            <a target="_blank" title="QQ交流" href="javascript:layer.msg('启动QQ会话窗口')"><i class="fa fa-qq fa-2x"></i></a>
                            <a target="_blank" title="给我写信" href="javascript:layer.msg('启动邮我窗口')"><i class="fa fa-envelope fa-2x"></i></a>
                            <a target="_blank" title="新浪微博" href="javascript:layer.msg('转到你的微博主页')"><i class="fa fa-weibo fa-2x"></i></a>
                            <a target="_blank" title="码云" href="javascript:layer.msg('转到你的github主页')"><i class="fa fa-git fa-2x"></i></a>
                        </div>
                    </div>
                    <div></div><!--占位-->
                    <div class="blog-module shadow">
                        <div class="blog-module-title">热文排行</div>
                        <ul class="fa-ul blog-module-ul">
                            <c:forEach items="${rlist}" var="blog">
                               <li><i class="fa-li fa fa-hand-o-right"></i><a href="/blog/details/${blog.blogId}">${blog.blogTitle}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">作者推荐</div>
                        <ul class="fa-ul blog-module-ul">
                            <c:forEach items="${rlist}" var="blog">
                                <li><i class="fa-li fa fa-hand-o-right"></i><a href="/blog/details/${blog.blogId}">${blog.blogTitle}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <%--<div class="blog-module shadow">
                        <div class="blog-module-title">一路走来</div>
                        <dl class="footprint">
                            <dt>2017年03月12日</dt>
                            <dd>新增留言回复功能！人人都可参与回复！</dd>
                            <dt>2017年03月10日</dt>
                            <dd>不落阁2.0基本功能完成，正式上线！</dd>
                            <dt>2017年03月09日</dt>
                            <dd>新增文章搜索功能！</dd>
                            <dt>2017年02月25日</dt>
                            <dd>QQ互联接入网站，可QQ登陆发表评论与留言！</dd>
                        </dl>
                    </div>--%>
                    <%--<div class="blog-module shadow">
                        <div class="blog-module-title">后台记录</div>
                        <dl class="footprint">
                            <dt>2017年03月16日</dt>
                            <dd>分页新增页容量控制</dd>
                            <dt>2017年03月12日</dt>
                            <dd>新增管家提醒功能</dd>
                            <dt>2017年03月10日</dt>
                            <dd>新增Win10快捷菜单</dd>
                        </dl>
                    </div>--%>
                    <div class="blog-module shadow">
                        <div class="blog-module-title">友情链接</div>
                        <ul class="blogroll">
                            <li><a target="_blank" href="http://www.layui.com/" title="Layui">Layui</a></li>
                            <li><a target="_blank" href="http://www.pagemark.cn/" title="页签">页签</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer">
        <p><span>Copyright</span><span>&copy;</span><span>2017</span><a href="http://www.lyblogs.cn">绮梦楼</a><span>Design By LY</span></p>
        <p><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备17021290号-1</a></p>
    </footer>
    <!--侧边导航-->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item layui-this">
            <a href="home.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
        </li>
        <li class="layui-nav-item">
            <a href="blog.jsp"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
        </li>
        <li class="layui-nav-item">
            <a href="resource.html"><i class="fa fa-tags fa-fw"></i>&nbsp;资源分享</a>
        </li>
        <li class="layui-nav-item">
            <a href="timeline.html"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
        </li>
        <li class="layui-nav-item">
            <a href="about.html"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
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
    <script src="${pageContext.request.contextPath}/resources/blg/js/global.js"></script>
    <!-- 本页脚本 -->
    <script src="${pageContext.request.contextPath}/resources/blg/js/home.js"></script>
</body>
</html>