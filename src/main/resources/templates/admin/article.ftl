<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/admin/layuimini/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="/admin/layuimini/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">

        <fieldset class="table-search-fieldset">
            <legend>搜索信息</legend>
            <div style="margin: 10px 10px 10px 10px">
                <form class="layui-form layui-form-pane" action="">
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">用户姓名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="username" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">用户性别</label>
                            <div class="layui-input-inline">
                                <input type="text" name="sex" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">用户城市</label>
                            <div class="layui-input-inline">
                                <input type="text" name="city" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">用户职业</label>
                            <div class="layui-input-inline">
                                <input type="text" name="classify" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <select name="city" lay-verify="">
                                <option value="">请选择一个城市</option>
                                <option value="010">北京</option>
                                <option value="021">上海</option>
                                <option value="0571">杭州</option>
                            </select>                           </div>
                    </div>
                </form>
            </div>
        </fieldset>


        <table class="layui-hide" id="articleTable" lay-filter="articleTable"></table>

        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-xs data-count-edit" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="delete">删除</a>
        </script>

    </div>
</div>


<script type="text/html" id="commentSwitchChange">
    <input type="checkbox" name="{{d.id}}-commentSwitch" lay-filter="ccs" value="1" {{ d.commentSwitch == 1 ? 'checked':''}} lay-skin="switch" lay-text="允许评论|禁止评论" >
</script>
<script type="text/html" id="statusChange">
    <form  class="layui-form">

        <input type="radio" lay-filter="asId" name="{{d.id}}-status" value="0" title="禁用" {{ d.status == 0 ? 'checked':'' }}
        >
        <input type="radio" lay-filter="asId" name="{{d.id}}-status" value="1" title="启用" {{ d.status == 1 ? 'checked':'' }}
        >
        <input type="radio" lay-filter="asId" name="{{d.id}}-status" value="2" title="草稿" {{ d.status == 2 ? 'checked':'' }}
        >



    </form>

</script>

<script src="/admin/layuimini/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'table'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            layuimini = layui.layuimini;

        var articleTable = table.render({
            elem: '#articleTable',
            url: '/admin/article/load',
            method:"post",
            response:{
                statusCode:1
            },
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols:  [[
                {field: 'id', width: 80, title: 'id'},
                {field: 'title', width: 80, title: '标题'},
                {field: 'content', width: 80, title: '内容'},
                {field: 'titleImg', width: 80, title: '标题图',event:'cti'},
                {field: 'createTime', width: 80, title: '创建时间', sort: true,templet:function (rowData) {
                        var time = new Date(rowData.createTime);
                        return time.getFullYear() + "年" + (time.getMonth() + 1) + "月" + time.getDate() + "日 星期" + (time.getDay() + 1) + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();
                    }},
                {field: 'updateTime', width: 80, title: '最后更新时间', sort: true,templet:function (rowData) {
                        var time = new Date(rowData.updateTime);
                        return time.getFullYear() + "年" + (time.getMonth() + 1) + "月" + time.getDate() + "日 星期" + (time.getDay() + 1) + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();

                    }},
                {field: 'commentSwitch', width: 180, title: '评论开关',templet:"#commentSwitchChange"},
                {field: 'remark', width: 80, title: '备注'},
                {field: 'views', width: 135, title: '浏览次数', sort: true},
                {field: 'label', width: 135, title: '标签', sort: true},
                {field: 'status', width: 135, title: '状态', sort: true,templet:"#statusChange"},
                {field: 'parentName', width: 135, title: '分类', sort: true},
                {field: 'commentTotal', width: 135, title: '评论数', sort: true},
                {title: '操作', minWidth: 150, toolbar: '#currentTableBar', fixed: "right", align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: true
        });


        //监听表格操作
        table.on('tool(articleTable)', function(obj) {

            let data = obj.data;



            switch (obj.event) {
                case 'delete':

                    layer.open({
                        content:'确认删除文章['+data.title+']吗？',
                        btn:['确认','取消'],
                        yes:function (index,layero) {

                            layer.msg("正在删除文章["+data.title+"中]");

                            $.post('/admin/article/delete',{id:data.id},function (res) {
                                if (res.code===1){
                                    layer.close(index);
                                    layer.msg("删除文章["+data.title+"]成功");
                                    articleTable.reload();
                                }else {
                                    layer.msg('删除文章["+data.title+"]失败或发生错误，请检查后重试');
                                }
                            });
                        },
                        btn2:function (index,layero) {

                        }
                    });



                    break;
                case 'update':


                    break;
            }
        });
            //监听单元格中的评论开关
        form.on('switch(ccs)', function(data){
            // console.log(data.elem); //得到checkbox原始DOM对象
            // console.log(data.elem.checked); //开关是否开启，true或者false
            // console.log(data.value); //开关value值，也可以通过data.elem.value得到
            // console.log(data.othis); //得到美化后的DOM对象

            data.elem.checked? layer.msg("开启该文章评论中"):layer.msg("禁止该文章评论中");


            let articleId = data.elem.name.split("-")[0];
            let commentSwitch = data.elem.checked?1:0;

            $.post("/admin/article/modify",{id:articleId,commentSwitch:commentSwitch},function (res) {
                if(res.code===1){
                    layer.msg(data.elem.checked?'开启评论成功':'禁止评论成功')

                }else {
                    layer.msg(data.elem.checked?'开启评论失败，请重试':'禁止评论失败，请重试')
                }
            })

        });


        //监听单元格中改变文章状态的单选按钮
        form.on('radio(asId)', function(data){
            // console.log(data.elem); //得到radio原始DOM对象
            // console.log(data.value); //被点击的radio的value值
            layer.msg("正在修改状态");


            let articleId = data.elem.name.split("-")[0];
            let articleStatus = data.value;

            $.post("/admin/article/modify",{id:articleId,status:articleStatus},function (res) {
                if(res.code===1){
                    layer.msg("修改状态成功");
                }else {
                    layer.msg("修改失败，请重试")
                }
            })

        });

    });
</script>
<script>

</script>

</body>
</html>