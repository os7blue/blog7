<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layuimini/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="/layuimini/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">


        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>站点信息设置</legend>
        </fieldset>


        <form class="layui-form layui-form-pane" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">站点标题：</label>
                <div class="layui-input-block">
                    <input type="text" name="siteTitle" lay-verify="required" autocomplete="off" placeholder="请输入标题" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">副标题：</label>
                <div class="layui-input-block">
                    <input type="text" name="siteSlogan" lay-verify="required" autocomplete="off" placeholder="请输入标题" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">站长昵称</label>
                    <div class="layui-input-block">
                        <input type="text" name="siteAuthName" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>


            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">seo优化</label>
                    <div class="layui-input-block">
                        <input type="text" name="seo" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">seo1</label>
                    <div class="layui-input-block">
                        <input type="text" name="seo1" id="date"  placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">seo2</label>
                    <div class="layui-input-block">
                        <input type="tel" name="seo2" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <button class="layui-btn" lay-submit  lay-filter="site_option">提交更改</button>
            </div>
        </form>
    </div>
</div>

<script src="/layuimini/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form', 'layedit', 'laydate','jquery'], function () {
        var form = layui.form
            , $ = layui.jquery
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });



        //监听提交
        form.on('submit(site_option)', function (data) {
            let jsonData = JSON.stringify(data.field);

            console.log(jsonData)




            $.ajax({
                type: 'POST',
                url: "/admin/option/edit",
                data: jsonData,
                contentType:'application/json;charset=UTF-8',
                success: function (res) {

                },
                dataType: 'json'
            });

            return false;
        });




    });
</script>

</body>
</html>