<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Insert title here</title>
    <jsp:include page="${bpath}/resources/jsp/AllCssJs.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" href="./resources/wangEditor/css/wangEditor.min.css">
</head>
<body>
<div class="container">
    <div class="col-md-12">
        <div class="box box-info">
            <form class="form-horizontal" id="queryform" method="GET" action="<%=request.getContextPath()%>/details">
                <div class="box-body">
                    <div class="form-group pd">
                        <div class="col-sm-8">
                            <label class="form-label">标题</label>
                            <input class="form-label" id="name" type="text" name="name" size="80"/>
                        </div>
                        <div class="col-sm-8 pd">
                            <label class="form-label">内容</label>
                            <textarea class="form-label" id="textarea1" style="height:600px;">
                <p>请输入内容...</p>
            </textarea>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript" src="./resources/wangEditor/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="./resources/wangEditor/js/wangEditor.min.js"></script>
<script type="text/javascript">
    var editor = new wangEditor('textarea1');
    editor.config.uploadImgUrl = '<%=request.getContextPath()%>/uploadFile/img';
    editor.config.uploadImgFileName = 'myFileName';
    editor.config.uploadParams = {
        token: 'abcdefg',
        user: 'wangfupeng1988'
    };
    // 设置 headers（举例）
    editor.config.uploadHeaders = {
        'Accept': 'text/x-json'
    };
    // 隐藏掉插入网络图片功能。该配置，只有在你正确配置了图片上传功能之后才可用。
    editor.config.hideLinkImg = true;
    editor.create();
</script>
</body>
</html>