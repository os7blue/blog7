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

        <fieldset class="table-search-fieldset">
            <legend>搜索</legend>
            <div style="margin: 10px 10px 10px 10px">
                <form class="layui-form layui-form-pane" lay-filter="articleSearch" action="">
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">评论内容</label>
                            <div class="layui-input-inline">
                                <input type="text" name="content" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">创建时间</label>
                            <div class="layui-input-inline">
                                <input type="text" id="createTime" name="createTime" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">所属文章</label>
                            <div class="layui-input-inline">
                                <input type="text" id="pit" lay-filter="pit" name="parentIds" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">

                            <button type="submit" style="" class="layui-btn layui-btn-primary" lay-submit  lay-filter="data-search-btn"><i class="layui-icon"></i> 搜 索 (搜索条件可以留空)</button>


                        </div>
                    </div>
                </form>
            </div>
        </fieldset>

        <table class="layui-hide" id="commentTable" lay-filter="commentTable"></table>

        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="delete">删除</a>
        </script>

    </div>
</div>
<script src="/layuimini/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="/layuimini/js/lay-config.js?v=1.0.4" charset="utf-8"></script>

<script>
    layui.use(['form', 'table','tableSelect','laydate'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            layuimini = layui.layuimini,
            tableSelect = layui.tableSelect,
            laydate=layui.laydate;


        /**
         * 渲染日期选择框
         */
        laydate.render({
            elem: '#createTime'
        });


        tableSelect.render({
            elem: '#pit',	//定义输入框input对象 必填
            checkedKey: 'id', //表格的唯一建值，非常重要，影响到选中状态 必填
            searchKey: 'content',	//搜索输入框的name值 默认keyword
            searchPlaceholder: '按内容搜索',	//搜索输入框的提示文字 默认关键词搜索
            height:'400',  //自定义高度
            width:'800',  //自定义宽度
            table: {	//定义表格参数，与LAYUI的TABLE模块一致，只是无需再定义表格elem
                url:'/admin/article/load',
                method: 'post',
                response:{
                    statusCode:1
                },
                cols: [[
                    { type: 'radio' },
                    {field: 'id', width: 80, title: 'id'},
                    {field: 'title', width: 80, title: '标题'},
                    {field: 'content', width: 80, title: '内容'},
                    {field: 'commentTotal', width: 80, title: '评论数'}
                ]]
            },
            done: function (elem, data) {
                //选择完后的回调，包含2个返回值 elem:返回之前input对象；data:表格返回的选中的数据 []
                //拿到data[]后 就按照业务需求做想做的事情啦~比如加个隐藏域放ID...
                var NEWJSON = []
                layui.each(data.data, function (index, item) {
                    NEWJSON.push(item.title)
                })
                elem.val(NEWJSON.join(","))

            }
        })


        table.render({
            elem: '#commentTable',
            url: '/admin/comment/load',
            method:'post',
            response:{
                statusCode:1
            },
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {field: 'id', width: 80, title: 'id'},
                {field: 'email', width: 80, title: 'email'},
                {field: 'url', width: 80, title: 'url'},
                {field: 'nickName', width: 80, title: '昵称'},
                {field: 'content', width: 80, title: '内容'},
                {field: 'createTime', width: 80, title: '创建时间', sort: true},
                {field: 'remark', width: 80, title: '备注'},
                {field: 'status', width: 135, title: '状态', sort: true},
                {title: '操作', minWidth: 150, toolbar: '#currentTableBar', fixed: "right", align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: true
        });

        // 监听搜索操作
        form.on('submit(data-search-btn)', function (data) {
            let parentId =  $("#pit").attr("ts-selected");
            let param = data.field;
            let createTime;

            if (param.createTime!==null&&param.createTime!==""){
                createTime = new Date(param.createTime).getTime();
            }

            table.reload("commentTable", {
                where:{
                    createTime :    createTime,
                    parentId   :    parentId,
                    content    :    param.content
                }
            });

            return false;


        });

        // 监听添加操作
        $(".data-add-btn").on("click", function () {

            var index = layer.open({
                title: '添加用户',
                type: 2,
                shade: 0.2,
                maxmin:true,
                shadeClose: true,
                area: ['100%', '100%'],
                content: '/page/table/add.html',
            });
            $(window).on("resize", function () {
                layer.full(index);
            });

            return false;
        });



        //监听表格操作
        table.on('tool(articleTable)', function(obj) {

            let data = obj.data;



            switch (obj.event) {
                case 'delete':

                    layer.open({
                        icon:3,
                        content:'确认删除文章['+data.title+']吗？',
                        btn:['确认','取消'],
                        yes:function (index,layero) {



                            layer.msg("正在删除文章["+data.title+"]", {
                                icon: 7,
                                time: 77777
                            });

                            $.post('/admin/article/delete',{id:data.id},function (res) {
                                layer.close(layer.index);
                                if (res.code===1){
                                    layer.close(index);
                                    layer.msg("删除文章["+data.title+"]成功", {
                                        icon: 1
                                    });
                                    articleTable.reload();
                                }else {
                                    layer.msg('删除文章["+data.title+"]失败或发生错误，请检查后重试', {
                                        icon: 2
                                    });
                                }
                            });
                        },
                        btn2:function (index,layero) {

                        }
                    });



                    break;
                case 'edit':



                    break;
            }
        });

    });
</script>
<script>

</script>

</body>
</html>