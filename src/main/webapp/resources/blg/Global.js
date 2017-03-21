
layui.config({
    version: false //一般用于更新模块缓存，默认不开启。设为true即让浏览器不缓存。也可以设为一个固定的值，如：201610
    , debug: false //用于开启调试模式，默认false，如果设为true，则JS模块的节点会保留在页面
    , base: '/layui/lay/modules/' //设定扩展的Layui模块的所在目录，一般用于外部模块扩展
});

layui.use(['element', 'layer', 'util', 'pagesize','layedit'], function () {
    var $ = layui.jquery;
    var element = layui.element();
    var layer = layui.layer;
    var util = layui.util;
    var layedit = layui.layedit;
    layedit.build('demo');

    var index = layer.load(1);
    $.post("/api/admin/GetSiteStatistics", {}, function (data) {
        layer.close(index);
        $("#totalCount").html(data.UserTotalCount);
        $("#articleCount").html(data.ArticleTotalCount);
        $("#todayRegist").html(data.TodayRegistCount);
        $("#todayLogin").html(data.TodayLoginCount);
        $("#resourceCount").html(data.ResourceTotalCount);
    });

    $('span.sys-title').click(function (event) {
        event.stopPropagation();    //阻止事件冒泡
        $('div.short-menu').slideToggle('fast');
    });
    $('div.short-menu').click(function (event) {
        event.stopPropagation();    //阻止事件冒泡
    });
    $(document).click(function () {
        $('div.short-menu').slideUp('fast');
    });

    //监听快捷菜单点击
    $('.short-menu .layui-field-box>div>div').click(function () {
        var elem = this;
        var url = $(elem).children('span').attr('data-url');
        var id = $(elem).children('span').attr('data-id');
        var title = $(elem).children('span').text();

        if (url == undefined) return;

        var tabTitleDiv = $('.layui-tab[lay-filter=\'tab\']').children('.layui-tab-title');
        var exist = tabTitleDiv.find('li[lay-id=' + id + ']');
        if (exist.length > 0) {
            //切换到指定索引的卡片
            element.tabChange('tab', id);
        } else {
            var index = layer.load(1);
            $.ajax({
                type: 'post',
                url: url,
                success: function (data) {
                    layer.close(index);
                    element.tabAdd('tab', { title: title, content: data, id: id });
                    //切换到指定索引的卡片
                    element.tabChange('tab', id);
                },
                error: function (e) {
                    var message = e.responseText;
                    layer.close(index);
                    layer.msg(message, { icon: 2 });
                }
            });
        }
        $('div.short-menu').slideUp('fast');
    });

    layer.alert('目前已做：<br/>文章管理、资源管理、时光轴管理、文章回收站<br/>网站公告、更新日志、留言管理<br/><br/>点击顶部【部落格后台管理系统】有惊喜', {
        skin: 'layui-layer-molv'
        , closeBtn: 1
        , anim: 1 //动画类型
    });

    //监听左侧导航点击
    element.on('nav(leftnav)', function (elem) {
        var url = $(elem).children('a').attr('data-url');
        var id = $(elem).children('a').attr('data-id');
        var title = $(elem).children('a').text();
        if (title == "首页") {
            element.tabChange('tab', 0);
            return;
        }
        if (url == undefined) return;

        var tabTitleDiv = $('.layui-tab[lay-filter=\'tab\']').children('.layui-tab-title');
        var exist = tabTitleDiv.find('li[lay-id=' + id + ']');
        if (exist.length > 0) {
            //切换到指定索引的卡片
            element.tabChange('tab', id);
        } else {
            var index = layer.load(1);
            $.ajax({
                type: 'post',
                url: url,
                success: function (data) {
                    layer.close(index);
                    element.tabAdd('tab', { title: title, content: data, id: id });
                    //切换到指定索引的卡片
                    element.tabChange('tab', id);
                },
                error: function (e) {
                    var message = e.responseText;
                    layer.close(index);
                    layer.msg(message, { icon: 2 });
                }
            });
        }
    });

    //左侧导航展开与收缩
    var ishide = false;
    $('.layui-side-hide').click(function () {
        if (!ishide) {
            $('.layui-side').animate({ left: '-200px' });
            $(this).animate({ left: '-200px' });
            $('.layui-body').animate({ left: '0px' });
            $('.layui-footer').animate({ left: '0px' });
            var tishi = layer.msg('鼠标靠左自动显示菜单', { time: 1500 });
            layer.style(tishi, {
                top: 'auto',
                bottom: '50px'
            });
            ishide = true;
        }
    });
    $(document).mousemove(function (e) {
        if (e.pageX == 0) {
            if (ishide) {
                $('.layui-side').animate({ left: '0px' });
                $('.layui-side-hide').animate({ left: '0px' });
                $('.layui-body').animate({ left: '200px' });
                $('.layui-footer').animate({ left: '200px' });
                ishide = false;
            }
        }
    });

    runSteward();
    //管家功能
    function runSteward() {
        var layerSteward;   //管家窗口
        var isStop = false; //是否停止提醒    
        getNotReplyLeaveMessage();
        var interval = setInterval(function () {
            getNotReplyLeaveMessage();
        }, 60000);
        function getNotReplyLeaveMessage() {
            $.ajax({
                type: 'post',
                url: '/api/admin/GetNotReplyLeaveMessage',
                dataType: 'json',
                success: function (res) {
                    if (res.Success && res.Data != 0) {
                        clearInterval(interval); //停止计时器
                        var content = '<p>目前有<span>' + res.Data + '</span>条留言未回复<a href="/About#tabIndex=4" target="_blank">点击查看</a></p>';
                        content += '<div class="notnotice" >不再提醒</div>';
                        layerSteward = layer.open({
                            type: 1,
                            title: '管家提醒',
                            shade: 0,
                            resize: false,
                            area: ['340px', '215px'],
                            time: 20000, //20秒后自动关闭
                            skin: 'steward',
                            closeBtn: 1,
                            anim: 2,
                            content: content,
                            end: function () {
                                if (!isStop) {
                                    interval = setInterval(function () {
                                        getNotReplyLeaveMessage();
                                    }, 60000);
                                }
                            }
                        });
                        $('.notnotice').click(function () {
                            isStop = true;
                            layer.close(layerSteward);
                        });
                    } else if (!res.Success) {
                        layer.msg(res.Message);
                    }
                },
                error: function (e) {
                    layer.msg(e.responseText);
                }
            });
        }
    }
});

//时间格式化
Date.prototype.Format = function (formatStr) {
    var str = formatStr;
    var Week = ['日', '一', '二', '三', '四', '五', '六'];

    str = str.replace(/yyyy|YYYY/, this.getFullYear());
    str = str.replace(/yy|YY/, (this.getYear() % 100) > 9 ? (this.getYear() % 100).toString() : '0' + (this.getYear() % 100));
    str = str.replace(/MM/, (this.getMonth() + 1) > 9 ? (this.getMonth() + 1).toString() : '0' + (this.getMonth() + 1));
    str = str.replace(/M/g, (this.getMonth() + 1));

    str = str.replace(/w|W/g, Week[this.getDay()]);

    str = str.replace(/dd|DD/, this.getDate() > 9 ? this.getDate().toString() : '0' + this.getDate());
    str = str.replace(/d|D/g, this.getDate());

    str = str.replace(/hh|HH/, this.getHours() > 9 ? this.getHours().toString() : '0' + this.getHours());
    str = str.replace(/h|H/g, this.getHours());
    str = str.replace(/mm/, this.getMinutes() > 9 ? this.getMinutes().toString() : '0' + this.getMinutes());
    str = str.replace(/m/g, this.getMinutes());

    str = str.replace(/ss|SS/, this.getSeconds() > 9 ? this.getSeconds().toString() : '0' + this.getSeconds());
    str = str.replace(/s|S/g, this.getSeconds());

    return str;
}
