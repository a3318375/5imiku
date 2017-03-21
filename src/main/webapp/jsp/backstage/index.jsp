<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>开始使用Layui</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/global.css">
</head>
<body>
<header class="header">
    <span class="user">
        <i class="layui-icon">&#xe612;</i>
        <a href="javascript:void(0)" onclick="login()">登陆</a>
        <a href="javascript:void(0)" onclick="register()">注册</a>
    </span>
</header>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <div class="logo"><a href="/Home/Public">PageMark</a></div>
        <ul class="layui-nav layui-nav-tree layui-nav-side">
            <li class="layui-nav-item layui-this">
                <a href="/backstage"><i class="fa fa-home fa-lg"></i>主页</a>
            </li>
            <li class="layui-nav-item ">
                <a href="/Home/Private"><i class="fa fa-user fa-lg"></i>个人首页</a>
            </li>
            <li class="layui-nav-item ">
                <a href="/Home/About"><i class="fa fa-info-circle fa-lg"></i>关于本站</a>
            </li>
        </ul>
    </div>
</div>
<footer class="footer">
    <div class="footer-main">
        <p>Copyright &copy; 2017 PageMark</p>
        <p><a href="javascript:void(0)" onclick="doing()">捐赠作者</a><a href="http://www.lyblogs.cn" target="_blank">作者博客</a><a href="http://www.layui.com/" target="_blank">Layui框架</a><a href="http://www.lyblogs.cn/About" target="_blank">联系作者</a></p>
    </div>
</footer>
<script src="/layui/layui.js"></script>
<script src="/Scripts/Global.js"></script>
<script charset="gbk" src="http://www.baidu.com/js/opensug.js"></script>
</body>
</html>
