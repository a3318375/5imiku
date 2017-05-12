﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>绮梦楼 - 点点滴滴 - 时光轴</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/bktb.png" type="image/x-icon">
    <!--Layui-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/layui/css/layui.css" rel="stylesheet" />
    <!--font-awesome-->
    <link href="${pageContext.request.contextPath}/resources/blg/plug/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- animate.css -->
    <link href="${pageContext.request.contextPath}/resources/blg/css/animate.min.css" rel="stylesheet" />
    <!--全局样式表-->
    <link href="${pageContext.request.contextPath}/resources/blg/css/global.css" rel="stylesheet" />
    <!-- 本页样式表 -->
    <link href="${pageContext.request.contextPath}/resources/blg/css/timeline.css" rel="stylesheet" />
</head>
<body>
    <!-- 导航 -->
    <nav class="blog-nav layui-header">
        <div class="blog-container">
            <!-- QQ互联登陆 -->
            <c:choose>
                <c:when test="${sessionScope.userInfo == null}">
                    <a href="javascript:;" class="blog-user">
                        <i class="fa fa-qq"></i>
                    </a>
                </c:when>
                <c:otherwise>
                    <a href="javascript:;" class="blog-user">
                        <img src="${sessionScope.userInfo.avatar.avatarURL100}" alt="Absolutely" title="Absolutely" />
                    </a>
                </c:otherwise>
            </c:choose>
            <!-- 不落阁 -->
            <a class="blog-logo" href="home.html">绮梦楼</a>
            <!-- 导航菜单 -->
            <ul class="layui-nav" lay-filter="nav">
                <li class="layui-nav-item">
                    <a href="/"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
                </li>
                <li class="layui-nav-item">
                    <a href="/blog"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
                </li>
                <li class="layui-nav-item layui-this">
                    <a href="/journal"><i class="fa fa-hourglass-half fa-fw"></i>&nbsp;点点滴滴</a>
                </li>
                <li class="layui-nav-item">
                    <a href="/about"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
                </li>
            </ul>
            <!-- 手机和平板的导航开关 -->
            <a class="blog-navicon" href="javascript:;">
                <i class="fa fa-navicon"></i>
            </a>
        </div>
    </nav>
    <!-- 主体（一般只改变这里的内容） -->
    <div class="blog-body">
        <div class="blog-container">
            <blockquote class="layui-elem-quote sitemap layui-breadcrumb shadow">
                <a href="/" title="网站首页">网站首页</a>
                <a href="/journal" title="点点滴滴">点点滴滴</a>
                <a><cite>时光轴</cite></a>
            </blockquote>
            <div class="blog-main">
                <div class="child-nav shadow">
                    <span class="child-nav-btn child-nav-btn-this">时光轴</span>
                    <span class="child-nav-btn">笔记墙</span>
                </div>
                <div class="timeline-box shadow">
                    <div class="timeline-main">
                        <h1><i class="fa fa-clock-o"></i>时光轴<span> —— 记录生活点点滴滴</span></h1>
                        <div class="timeline-line"></div>
                        <div class="timeline-year">
                            <h2><a class="yearToggle" href="javascript:;">2017年</a><i class="fa fa-caret-down fa-fw"></i></h2>
                            <div class="timeline-month">
                                <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">2月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                                <ul>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">02月23日 19:33</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">该时光轴支持手机平板PC，但并不能兼容一些老的浏览器！</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">02月11日 20:29</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2017年2月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">02月10日 20:35</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2017年2月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div>
                            <div class="timeline-month">
                                <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">1月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                                <ul>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">01月23日 19:33</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2017年1月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">01月11日 20:29</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2017年1月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">01月10日 20:35</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2017年1月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="timeline-year">
                            <h2><a class="yearToggle" href="javascript:;">2016年</a><i class="fa fa-caret-down fa-fw"></i></h2>
                            <div class="timeline-month">
                                <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">2月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                                <ul>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">02月23日 19:33</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2016年2月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">02月11日 20:29</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2016年2月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">02月10日 20:35</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2016年2月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div>
                            <div class="timeline-month">
                                <h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">1月</a><i class="fa fa-caret-down fa-fw"></i></h3>
                                <ul>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">01月23日 19:33</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2016年1月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">01月11日 20:29</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2016年1月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                    <li class=" ">
                                        <div class="h4  animated fadeInLeft">
                                            <p class="date">01月10日 20:35</p>
                                        </div>
                                        <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                        <div class="content animated fadeInRight">这是2016年1月发表的</div>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>THE END</h1>
                    </div>
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
        <li class="layui-nav-item">
            <a href="/blog"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="/journal"><i class="fa fa-road fa-fw"></i>&nbsp;点点滴滴</a>
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
    <script src="${pageContext.request.contextPath}/resources/blg/js/global.js"></script>
    <!-- 本页脚本 -->
    <script type="text/javascript">
        layui.use('jquery', function () {
            var $ = layui.jquery;

            $(function () {
                $('.monthToggle').click(function () {
                    $(this).parent('h3').siblings('ul').slideToggle('slow');
                    $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
                });
                $('.yearToggle').click(function () {
                    $(this).parent('h2').siblings('.timeline-month').slideToggle('slow');
                    $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
                });
            });
        });
    </script>
</body>
</html>