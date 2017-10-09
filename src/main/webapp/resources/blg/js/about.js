/*

@Name：不落阁整站模板源码 
@Author：Absolutely 
@Site：http://www.lyblogs.cn

*/

layui.use(['element', 'jquery', 'form', 'layedit','flow'], function () {
    var element = layui.element();
    var form = layui.form();
    var $ = layui.jquery;
    var layedit = layui.layedit;

    //评论和留言的编辑器
    var editIndex = layedit.build('remarkEditor', {
        height: 150,
        tool: ['face', '|', 'left', 'center', 'right', '|', 'link'],
    });
    //评论和留言的编辑器的验证
    layui.form().verify({
        content: function (value) {
            value = $.trim(layedit.getText(editIndex));
            if (value == "") return "自少得有一个字吧";
            layedit.sync(editIndex);
        }
    });

    //Hash地址的定位
    var layid = location.hash.replace(/^#tabIndex=/, '');
    if (layid == "") {
        element.tabChange('tabAbout', 1);
    }
    element.tabChange('tabAbout', layid);

    element.on('tab(tabAbout)', function (elem) {
        location.hash = 'tabIndex=' + $(this).attr('lay-id');
    });

    form.on('submit(formRemark)', function (data) {
        //var index = layer.load(1);
        var user = $("#userInfo").val();
        if(user == ''||user == null){
            layer.msg("请登录后再评论", { icon: 1 });
            return false;
        }
        var text = $.trim(layedit.getText(editIndex));
        $("#context").val(text);
        $("#commentForm").submit();
    });


    //监听留言提交
    form.on('submit(formLeaveMessage)', function (data) {
        var user = $("#userInfo").val();
        if(user == ''||user == null){
            layer.msg("请登录后再评论", { icon: 1 });
            return false;
        }
        var text = $.trim(layedit.getText(editIndex));
        $("#context").val(text);
        $("#commentForm").submit();
    });


    var flow = layui.flow;
    flow.load({
        elem: '#commentList' //指定列表容器
        ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
            var lis = [];
            //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
            $.get('/comment/getComments?pageNumber='+page + "&blogUuid=0", function(res){
                //假设你的列表返回在data集合中
                layui.each(res.list, function(index, item){
                    var code = '<li><div class="comment-parent"><img src="' + item.userIcon + '" alt="'+ item.userName +'" />' +
                        '<div class="info"><span class="username">'+ item.userName +'</span><span class="time">'+getSmpFormatDateByLong(item.createDate,true)+'</span>' +
                        '</div><div class="content">' +
                        item.commentText +
                        '</div></div></li>';
                    lis.push(code);
                });
                //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                next(lis.join(''), page < res.pages);
            });
        }
    });

});
function btnReplyClick(elem) {
    var $ = layui.jquery;
    $(elem).parent('p').parent('.comment-parent').siblings('.replycontainer').toggleClass('layui-hide');
    if ($(elem).text() == '回复') {
        $(elem).text('收起')
    } else {
        $(elem).text('回复')
    }
}
systemTime();

function systemTime() {
    //获取系统时间。
    var dateTime = new Date();
    var year = dateTime.getFullYear();
    var month = dateTime.getMonth() + 1;
    var day = dateTime.getDate();
    var hh = dateTime.getHours();
    var mm = dateTime.getMinutes();
    var ss = dateTime.getSeconds();

    //分秒时间是一位数字，在数字前补0。
    mm = extra(mm);
    ss = extra(ss);

    //将时间显示到ID为time的位置，时间格式形如：19:18:02
    document.getElementById("time").innerHTML = year + "-" + month + "-" + day + " " + hh + ":" + mm + ":" + ss;
    //每隔1000ms执行方法systemTime()。
    setTimeout("systemTime()", 1000);
}

//补位函数。
function extra(x) {
    //如果传入数字小于10，数字前补一位0。
    if (x < 10) {
        return "0" + x;
    }
    else {
        return x;
    }
}