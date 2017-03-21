<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Insert title here</title>
    <jsp:include page="${bpath}/resources/jsp/AllCssJs.jsp"></jsp:include>
</head>
<body>
<jsp:include page="${bpath}/resources/jsp/head.jsp"></jsp:include>
<div class="container-fluid bg">
    <div class="col-md-12">
        <div class="col-md-2">
        </div>
        <div class="col-md-8 column tm">
            <h2 class="post-title" style="text-align: center">
                ${blogInfo.blogTitle}
            </h2>
            <div class="meta-box" style="text-align: center">
                <span class="m-post-date">
                    <i class="fa fa-calendar-o"></i> ${blogInfo.createDate}</span>
                <span class="comments-link">
                    <a href="http://www.soulteary.com/2014/07/05/js-math-random-trick.html#comments" class="ds-thread-count" data-thread-key="8692" title="Comment on [JS]Math.random()随机数的二三事" target="_self">4条评论</a>
                </span>
            </div>
            <jsp:include page="${bpath}/upload/${blogInfo.blogUrl}"></jsp:include>
            <!-- UY BEGIN -->
            <div id="uyan_frame"></div>
            <script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=2127847"></script>
            <!-- UY END -->
        </div>
        <div class="col-md-2">
        </div>
    </div>
    <%--<iframe src="${pageContext.request.contextPath}/upload/${blogInfo.blogUrl}" id="iframepage" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" onLoad="iFrameHeight()"></iframe>--%>
</div>
</body>
</html>