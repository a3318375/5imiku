<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-fixed navbar-transparent dark bootsnav">
    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i
                        class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <div class="container">
        <!-- Start Atribute Navigation -->
        <div class="attr-nav">
            <ul>
                <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                <%--<li class="side-menu"><a href="#"><i class="fa fa-bars"></i></a></li>--%>
            </ul>
        </div>
        <!-- End Atribute Navigation -->

        <!-- Start Header Navigation -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#navbar-menu">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="#">
                <img src="${pageContext.request.contextPath}/resources/img/4.png" class="logo logo-display" alt="">
            </a>
        </div>
        <!-- End Header Navigation -->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
                data-out="fadeOutUp">
                <li><a href="/">主页</a></li>
                <li><a href="#">最新播报</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle"
                                        data-toggle="dropdown">美图分享</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                data-toggle="dropdown">Sub Menu</a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                    </ul></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle"
                                        data-toggle="dropdown">音乐分享</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                data-toggle="dropdown">Sub Menu</a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                    </ul></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle"
                                        data-toggle="dropdown">精品资源</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                data-toggle="dropdown">Sub Menu</a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                        <li><a href="#">Custom Menu</a></li>
                    </ul></li>
                <li><a href="#">网盘搜索</a></li>
                <li><a href="#">科学上网</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>

    <!-- Start Side Menu -->
    <div class="side">
        <a href="#" class="close-side"><i class="fa fa-times"></i></a>
        <div class="widget">
            <h6 class="title">Custom Pages</h6>
            <ul class="link">
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
        <div class="widget">
            <h6 class="title">Additional Links</h6>
            <ul class="link">
                <li><a href="#">Retina Homepage</a></li>
                <li><a href="#">New Page Examples</a></li>
                <li><a href="#">Parallax Sections</a></li>
                <li><a href="#">Shortcode Central</a></li>
                <li><a href="#">Ultimate Font Collection</a></li>
            </ul>
        </div>
    </div>
    <!-- End Side Menu -->
</nav>