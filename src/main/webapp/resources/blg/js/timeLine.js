layui.use(['flow'], function () {
    var $ = layui.jquery;
    var year;
    var mouth;
    $.get('/journal/list', function (res) {
        var code = '<h1><i class="fa fa-clock-o"></i>时光轴<span> —— 记录生活点点滴滴</span></h1>' +
            '<div class="timeline-line"></div>';
        //假设你的列表返回在data集合中
        var data = eval(res);
        debugger;
        $.each(data, function (index, item) {
            var nowYear = getYear(item.createDate);
            var nowMouth = getMouth(item.createDate);
            if (index == 0) {
                code = code + '<div class="timeline-year">' +
                    '<h2><a class="yearToggle" href="javascript:;">' + nowYear + '年</a><i class="fa fa-caret-down fa-fw"></i></h2>' +
                    '<div class="timeline-month">' +
                    '<h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">' + nowMouth + '月</a><i class="fa fa-caret-down fa-fw"></i></h3>' +
                    '<ul><li class=" "><div class="h4  animated fadeInLeft">' +
                    '<p class="date">' + getDate(item.createDate) + '</p></div><p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>' +
                    '<div class="content animated fadeInRight">'+ item.journalContext +'</div>' +
                    '<div class="clear"></div></li>';
            } else {
                if (nowYear != year) {
                    code = code + '</ul></div></div>' +
                        '<div class="timeline-year">' +
                        '<h2><a class="yearToggle" href="javascript:;">' + nowYear + '年</a><i class="fa fa-caret-down fa-fw"></i></h2>' +
                        '<div class="timeline-month">' +
                        '<h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">' + nowMouth + '月</a><i class="fa fa-caret-down fa-fw"></i></h3>' +
                        '<ul><li class=" "><div class="h4  animated fadeInLeft">' +
                        '<p class="date">' + getDate(item.createDate) + '</p></div><p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>' +
                        '<div class="content animated fadeInRight">'+ item.journalContext +'</div>' +
                        '<div class="clear"></div></li>';
                } else if (nowMouth != mouth) {
                    code = code + '</ul></div>' +
                        '<div class="timeline-month">' +
                        '<h3 class=" animated fadeInLeft"><a class="monthToggle" href="javascript:;">' + nowMouth + '月</a><i class="fa fa-caret-down fa-fw"></i></h3>' +
                        '<ul><li class=" "><div class="h4  animated fadeInLeft">' +
                        '<p class="date">' + getDate(item.createDate) + '</p></div><p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>' +
                        '<div class="content animated fadeInRight">'+ item.journalContext +'</div>' +
                        '<div class="clear"></div></li>';
                } else {
                    code = code + '<li class=" "><div class="h4  animated fadeInLeft">' +
                        '<p class="date">' + getDate(item.createDate) + '</p></div><p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>' +
                        '<div class="content animated fadeInRight">'+ item.journalContext +'</div>' +
                        '<div class="clear"></div></li>';
                }
            }
            year = getYear(item.createDate);
            mouth = getMouth(item.createDate);
        });
        code = code + '</ul></div></div><h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>THE END</h1>';
        $("#timeLine").html(code);

        $('.monthToggle').click(function () {
            $(this).parent('h3').siblings('ul').slideToggle('slow');
            $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
        });
        $('.yearToggle').click(function () {
            $(this).parent('h2').siblings('.timeline-month').slideToggle('slow');
            $(this).siblings('i').toggleClass('fa-caret-down fa-caret-right');
        });
    });

    function getMouth(obj) {
        var newTime = new Date(obj);
        var month = newTime.getMonth() + 1;
        return month;
    }

    function getYear(obj) {
        var newTime = new Date(obj);
        var year = newTime.getFullYear();
        return year;
    }

    function getDate(obj) {
        var newTime = new Date(obj);
        var m = newTime.getMonth() + 1;
        m = m < 10 ? ('0' + m) : m;
        var d = newTime.getDate();
        d = d < 10 ? ('0' + d) : d;
        var h = newTime.getHours();
        h = h < 10 ? ('0' + h) : h;
        var minute = newTime.getMinutes();
        minute = minute < 10 ? ('0' + minute) : minute;
        return m + '月' + d + '日 ' + h + ':' + minute;
    }

});