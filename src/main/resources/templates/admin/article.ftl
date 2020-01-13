<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/admin/layuimini/lib/layui-v2.5.4/css/layui.css" media="all">
    <link rel="stylesheet" href="/admin/layuimini/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">

        <fieldset class="layui-elem-field layuimini-search">
            <legend>搜索</legend>
            <div style="margin: 10px 10px 10px 10px">
                <form class="layui-form layui-form-pane" lay-filter="searchForm" action="">
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label" >搜索内容</label>
                            <div class="layui-input-inline" id="sed">
                                <input type="text" id="searchValue" name="searchValue" autocomplete="off" placeholder="输入搜搜条件" lay-filter="searchValue" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">搜索类型</label>
                            <div class="layui-input-block">
                                <select name="searchType" lay-filter="searchType">
                                    <option value=""></option>
                                    <option value="1">标题</option>
                                    <option value="2">内容</option>
                                    <option value="3">创建时间</option>
                                    <option value="4">更新时间</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <a class="layui-btn" lay-submit="" lay-filter="searchBtn">搜索</a>
                        </div>
                    </div>
                </form>
            </div>
        </fieldset>

        <div class="layui-btn-group">
            <button class="layui-btn data-add-btn">编辑新文章</button>
        </div>
        <table class="layui-hide" id="articleTable" lay-filter="articleTable"></table>
        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-xs data-count-edit" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="delete">删除</a>
        </script>
    </div>
</div>
<script src="/admin/layuimini/lib/layui-v2.5.4/layui.js" charset="utf-8"></script>
<script>
    layui.use(['laydate','form', 'table','layer','layuimini'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            layer=layui.layer,
            laydate = layui.laydate,
            layuimini = layui.layuimini;

        var articleTable = table.render({
            elem: '#articleTable',
            url: '/admin/article/loadArticleList',
            method:'post',
            cols: [[
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
                {field: 'mark', width: 80, title: '备注'},
                {field: 'views', width: 135, title: '浏览次数', sort: true},
                {field: 'label', width: 135, title: '标签', sort: true},
                {field: 'status', width: 135, title: '状态', sort: true},
                {field: 'parentName', width: 135, title: '分类', sort: true},
                {field: 'commentTotal', width: 135, title: '评论数', sort: true},
                {title: '操作', minWidth: 150, toolbar: '#currentTableBar', fixed: "right", align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: true
        });


        table.on('tool(articleTable)',function (obj) {
            var layEvent = obj.event;

            var data = obj.data;



            if (layEvent==='edit'){
                layuimini.hash('page/welcome-1.html');
            }

            //删除按钮
            if (layEvent==='delete'){
                layer.open({
                    content:'确认删除文章['+data.title+']吗？',
                    btn:['确认','取消'],
                    yes:function (index,layero) {
                        $.post('/admin/article/delete',{id:data.id},function (res) {
                            if (res.code===1){
                                layer.close(index);
                                layer.msg("删除成功");
                                articleTable.reload();
                            }else {
                                layer.msg('删除失败或发生错误，请检查后重试');
                            }
                        });
                    },
                    btn2:function (index,layero) {

                    }
                });
            }

            //监听单元格点击事件，显示文章标题图
            if (layEvent==='cti'){
                console.log(obj);
                layer.photos({
                    photos:{
                        "title": "标题图预览", //相册标题
                        "id": 123, //相册id
                        "start": 0, //初始显示的图片序号，默认0
                        "data": [   //相册包含的图片，数组格式
                            {
                                "alt": "图片名",
                                "pid": 666, //图片id
                                "src": data.titleImg, //原图地址
                                "thumb": "" //缩略图地址
                            }
                        ]
                    }
                });}

        });


        //监听搜索类型选择变化
        form.on('select(searchType)', function(data){
            //按日期查询
            if (data.value==3||data.value==4){

                $('#searchValue').attr('lay-verify','date');


                laydate.render({
                    elem: '#searchValue', //指定元素
                    value:new Date()
                });

            //文本查询
            }else{
                $('#sed').html('');
                $('#sed').append('<input type="text" id="searchValue" name="searchValue" autocomplete="off" lay-filter="searchValue" placeholder="输入搜索条件" class="layui-input">');

            }
        });

        //搜索框监听
        form.on('submit(searchBtn)',function (obj) {

            var data = obj.field;

            console.log(data);
            articleTable.reload({
                where:{
                    searchType:data.searchType,
                    searchValue:data.searchValue
                }
            });

        });


        // 监听添加操作
        $(".data-add-btn").on("click", function () {
            layer.msg('添加数据');
        });

        // 监听删除操作
        $(".data-delete-btn").on("click", function () {
            var checkStatus = table.checkStatus('currentTableId')
                , data = checkStatus.data;
            layer.alert(JSON.stringify(data));
        });




    });
</script>
<script>

</script>

</body>
</html>