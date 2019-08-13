layui.define(['layer','form'],function (exports) {
    var form = layui.form
        ,layer = layui.layer
        ,$=layui.jquery;


    var view = [



        form.on("submit(loginCheck)",function (data) {
            $.post("/loginCheck",data.field,function (res) {
                if (res.code===1){
                    window.location.href="/admin";
                } else if (res.code===0){
                    layer.msg("验证错误，请重试")
                }
            });

            return false;
        }),



        form.on("submit(subArticleComment)",function (data) {
            $.post("/comment/addOneArticleComment",data.field,function (res) {
                if (res.code===1){
                    layer.msg("评论成功,三秒后刷新页面");

                    setTimeout(function () {
                        window.location.reload();
                    },3000);
                }else {
                    layer.msg("评论失败，请重试")

                }
            });

            return false;
        })




];

    exports('view',view);

});