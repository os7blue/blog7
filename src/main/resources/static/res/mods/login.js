layui.define(['layer','form'],function (exports) {
    var form = layui.form
        ,layer = layui.layer
        ,$=layui.jquery;


    layer.msg('Hello World');



    var lc = [

        form.on("submit(loginCheck)",function (data) {
            $.post("/loginCheck",data.field,function (res) {
                if (res.code===1){
                    window.location.href="/admin";
                } else if (res.code===0){
                    layer.msg("验证错误，请重试")
                }
            });

            return false;
        })


];

    exports('loginCheck',lc);

});