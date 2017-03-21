<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>+
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="梦想星辰大海">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <title>登录 - cms后台模板</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/blg/plug/layui/css/layui.css">
</head>

<body style="background-color: #f5f5f5;">
    <fieldset class="layui-elem-field">
        <legend>
            登录
        </legend>
        <form class="layui-form form-main" id="myfrom" action="/details">
            <div class="layui-form-item">
                <label class="layui-form-label">标题</label>
                <div class="layui-input-block">
                    <input type="text" name="name" required="" lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">摘要</label>
                <div class="layui-input-block">
                    <input type="text" name="blogAbstract" lay-verify="required" placeholder="请输入摘要" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">分类</label>
                <div class="layui-input-block">
                    <select name="type" lay-verify="required">
                        <option value=""></option>
                        <option value="1">java</option>
                        <option value="2">前端</option>
                        <option value="3">图片</option>
                        <option value="4">感悟</option>
                    </select><div class="layui-unselect layui-form-select"><div class="layui-select-title">
                    <input type="text" placeholder="请选择" value="" readonly="" class="layui-input layui-unselect"><i class="layui-edge"></i></div><dl class="layui-anim layui-anim-upbit"><dd lay-value="LY02212035178403" class="">ASP.NET MVC</dd><dd lay-value="LY02212035194645" class="">SQL Server</dd><dd lay-value="LY02212035203846" class="">Entity Framework</dd><dd lay-value="LY02212035218423" class="">Web前端</dd><dd lay-value="LY02212035253489" class="">C#基础</dd><dd lay-value="LY02282245013546" class="">杂文随笔</dd></dl></div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">作者</label>
                <div class="layui-input-block">
                    <input type="text" name="blogAuthor" lay-verify="required" placeholder="请输入作者" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <!--编辑器-->
                    <input type="hidden" name="context" id="context">
                    <textarea id="demo" style="display: none;"></textarea>
                </div>
            </div>
            <div class="layui-form-item" style="position:relative;">
                <label class="layui-form-label">封面</label>
                <div class="layui-input-inline">
                    <input name="blogCover" type="hidden" id="blogCover">
                    <img id="articleCoverImg" class="img-cover" src="${pageContext.request.contextPath}/resources/blg/images/111.png" alt="封面">
                </div>
                <div class="layui-input-inline" style="position:absolute;bottom:0;">
                    <div class="layui-box layui-upload-button">
                        <form target="layui-upload-iframe" method="post" key="set-mine" enctype="multipart/form-data" action="/uploadFile/cover">
                            <input id="articleCoverInput" type="file" name="myFileName" class="layui-upload-file" lay-title="点击上传" lay-ext="jpg|png|bmp"></form>
                        <span class="layui-upload-icon"><i class="layui-icon"></i>点击上传</span>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn site-demo-layedit" data-type="content">立即提交</button>
                </div>
            </div>
        </form>
    </fieldset>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/blg/plug/layui/layui.js"></script>+
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/resources/blg/Global.css" rel="stylesheet" />
    <script type="text/javascript">
        /**
         * 对layui进行全局配置
         */
        layui.config({
            base: '/resources/blg/plug/js/'
        });

        layui.use(['form','layedit','upload'], function() {
            var layedit = layui.layedit;
            var index = layedit.build('demo'); //建立编辑器
            var active = {
                content: function(){
                    var htmls = layedit.getContent(index);
                    $("#context").val(htmls);
                    $("#myfrom").submit();
                }
            };
            $('.site-demo-layedit').on('click', function(){
                var type = $(this).data('type');
                active[type] ? active[type].call(this) : '';
            });
            //监听提交
            layui.form().on('submit(signin)', function(data){
                layer.msg(JSON.stringify(data.field));
                //这里可以发起ajax请求进行登录验证
                return false;
            });
            layui.upload({
                url: '/uploadFile/cover'
                ,success: function(res){
                    $("#articleCoverImg").attr("src", '${pageContext.request.contextPath}' + res.url);
                    $("#blogCover").val('${pageContext.request.contextPath}' + res.url);
                }
            });
            //修正登录框margin
            var fieldset = layui.jquery("fieldset").eq(0);
            fieldset.css("margin-top", (layui.jquery(window).height() - fieldset.height()) * 0.3 + "px");
        });
    </script>
</body>
</html>