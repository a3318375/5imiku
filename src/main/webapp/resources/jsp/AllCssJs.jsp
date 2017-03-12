<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link href="<%=basePath%>/resources/bootstrap/css/bootstrap.min.css"
      rel="stylesheet">
<link href="<%=basePath%>/resources/bootstrap/fonts/FontAwesome/font-awesome.css"
      rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700'
      rel='stylesheet' type='text/css'>
<script src="<%=basePath%>/resources/bootstrap/js/jquery-3.1.1.min.js"
        type="text/javascript"></script>
<script src="<%=basePath%>/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/resources/bootstrap/js/bootsnav.js"></script>

<link href="<%=basePath%>/resources/bootstrap/css/animate.css" rel="stylesheet">
<link href="<%=basePath%>/resources/bootstrap/css/bootsnav.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
      href="<%=basePath%>/resources/bootstrap/css/htmleaf-demo.css">
<link href="<%=basePath%>/resources/bootstrap/css/overwrite.css" rel="stylesheet">
<link href="<%=basePath%>/resources/bootstrap/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/resources/bootstrap/skins/color.css" rel="stylesheet">
<style type="text/css">
    html {
        background: url(<%=basePath%>/resources/img/bg.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    .pd{
        padding-top: 20px;
    }
    .bg{
        padding-top: 120px;
        background: url(<%=basePath%>/resources/img/bg1.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    .cco{
        color: #dd4814;
    }
    .tm{
        background: rgba(255,255,255, 0.7);
    }
</style>