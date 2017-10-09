/*

@Name：不落阁整站模板源码 
@Author：Absolutely 
@Site：http://www.lyblogs.cn

*/

prettyPrint();
layui.use(['form', 'layedit','flow'], function () {
    var form = layui.form();
    var $ = layui.jquery;
    var layedit = layui.layedit;
    var flow = layui.flow;

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

    //监听评论提交
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
        /*var blogId = $("#blogId").val();
        $.ajax({
            url:'/comment/save',
            type:'POST', //GET
            async:false,    //或false,是否异步
            dataType:'json',
            data:{
                blogId:blogId,
                context:text
            },
            success:function(data){
                layer.close(index);
               /!* var content = data.field.editorContent;
                var html = '<li><div class="comment-parent"><img src="../images/Absolutely.jpg"alt="absolutely"/><div class="info"><span class="username">Absolutely</span><span class="time">' + data.createDate + '</span></div><div class="content">' + data.commentText + '</div></div></li>';
                $('.blog-comment').append(html);
                $('#remarkEditor').val('');
                editIndex = layui.layedit.build('remarkEditor', {
                    height: 150,
                    tool: ['face', '|', 'left', 'center', 'right', '|', 'link'],
                });*!/
                layer.msg("评论成功", { icon: 1 });
            }
        });
        return false;*/
    });


    flow.load({
        elem: '#commentList' //指定列表容器
        ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
            var lis = [];
            var blogId = $("#blogId").val();
            //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
            $.get('/comment/getComments?pageNumber='+page + "&blogUuid="  + blogId, function(res){
                //假设你的列表返回在data集合中
                layui.each(res.list, function(index, item){
                    var code = '<ul class="blog-comment"><li><div class="comment-parent"><img src="' + item.userIcon + '" alt="'+ item.userName +'" />' +
                        '<div class="info"><span class="username">'+ item.userName +'</span><span class="time">'+getSmpFormatDateByLong(item.createDate,true)+'</span>' +
                        '</div><div class="content">' +
                        item.commentText +
                        '</div></div></li></ul>';
                    lis.push(code);
                });
                //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                next(lis.join(''), page < res.pages);
            });
        }
    });
});