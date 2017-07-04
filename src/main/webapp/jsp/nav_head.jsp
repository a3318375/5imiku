<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <a class="blog-logo" href="/">绮梦楼</a>
        <!-- 导航菜单 -->
        <ul class="layui-nav" lay-filter="nav">
            <li class="layui-nav-item layui-this">
                <a href="/"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="/blog"><i class="fa fa-file-text fa-fw"></i>&nbsp;文章专栏</a>
            </li>
            <li class="layui-nav-item">
                <a href="/music"><i class="fa fa-tags fa-fw"></i>&nbsp;音乐分享</a>
            </li>
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