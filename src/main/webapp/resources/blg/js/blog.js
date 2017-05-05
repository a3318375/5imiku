layui.define(['layer'], function (exports) {
    var $ = layui.jquery,
        form = layui.form();
    form.on('submit(formSearch)', function (data) {
        $("#myfrom").submit();
    });
});
