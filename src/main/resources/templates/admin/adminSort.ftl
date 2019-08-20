
<!DOCTYPE html>
<html lang="ch">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Data-Table 表格</title>
    <link rel="stylesheet" href="/admin/frame/layui/css/layui.css">
    <!--<link rel="stylesheet" href="http://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">-->
    <link rel="stylesheet" href="/admin/frame/static/css/style.css">
    <link rel="icon" href="/admin/frame/static/image/code.png">
</head>
<body class="body">

<!-- 工具集 -->
<div class="my-btn-box">
    <span class="fl">
        <a class="layui-btn btn-add btn-default" id="btn-add">添加</a>
        <a class="layui-btn btn-add btn-default" id="btn-refresh"><i class="layui-icon">&#x1002;</i></a>
    </span>
</div>

<!-- 表格 -->
<div id="dateTable" lay-filter="st"></div>


<form class="layui-form" id="addSortFrom" lay-filter="editFrom" method="post" style="margin-top:10px;display: none">
    <div class="layui-form-item">
        <label class="layui-form-label">分类名</label>
        <div class="layui-input-inline">
            <input type="text" name="name" lay-verify="required"  autocomplete="off" placeholder=""
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
            <select name="status" lay-verify="" class="layui-select">
                <option value="0">禁用</option>
                <option value="1" selected>启用</option>
            </select>
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="button" class="layui-btn" lay-submit="" lay-filter="submitSortFrom">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="/layui25/layui.js"></script>
<script type="text/javascript" src="/admin/js/index.js"></script>
<script type="text/javascript">

    // layui方法
    layui.use(['table', 'form', 'layer', 'vip_table'], function () {

        // 操作对象
        var form = layui.form
            , table = layui.table
            , layer = layui.layer
            , vipTable = layui.vip_table
            , $ = layui.jquery;

        $("#wsb").on('click',function () {
            $.post("/admin/ws/push",{msg:$("#wsv").val()},function (res) {

            });
        });

        // 表格渲染
        var tableIns = table.render({
            elem: '#dateTable'                  //指定原始表格元素选择器（推荐id选择器）
            , height: vipTable.getFullHeight()    //容器高度
            , cols: [[                  //标题栏
                {field:'id',title:'id'}
                ,{field: 'name', title: '名称', width: 120}
                , {field: 'childNum', title: '文章数', width: 180}
                , {field: 'status', title: '状态', width: 70,templet:function (d) {
                        switch (d.status) {
                            case 0:
                                return "禁用";
                            case 1:
                                return "启用";
                            default:
                        }
                    }
                    }
                , {fixed: 'right', title: '操作', width: 150, align: 'center', toolbar: '#barOption'} //这里的toolbar值是模板元素的选择器
            ]]
            , id: 'dataCheck'
            , url: '/admin/sort/loadSortList'
            , method: 'post'
            , loading: true
            , done: function (res, curr, count) {
                //隐藏id
                $("[data-field='id']").css('display','none');
                //如果是异步请求数据方式，res即为你接口返回的信息。
                //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
                console.log(res);

                //得到当前页码
                console.log(curr);

                //得到数据总量
                console.log(count);
            }
        });

        form.on('submit(submitSortFrom)',function (data) {
            $.post('/admin/sort/addSort',data.field,function (res) {
                if (res.code!==1){
                    layer.msg("添加失败或已有此分类，请重试");
                    return;
                }
                $("#addSortFrom")[0].reset();
                layer.closeAll();
                layer.msg("添加成功！");
                tableIns.reload();
            });
        });


        table.on('tool(st)',function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if (layEvent === 'del'){
                layer.confirm('确认删除分类['+data.name+']吗？', {icon: 3, title:'确认删除？'}, function(index){
                    console.log(data);
                    if (data.childNum!==0 && data.childNum!==null){
                        layer.msg("当前分类下有"+data.childNum+"篇文章，不可删除");
                        return;
                    }
                    $.post('/admin/sort/delOne',{id:data.id},function (res) {

                        if (res.code===0){
                            layer.msg("删除失败，请检查后重试。");
                            return;
                        }

                        layer.msg("删除成功");
                        tableIns.reload();

                    });

                    layer.close(index);
                });
            }

        });

        //弹出添加框
        $('#btn-add').on('click', function () {
            layer.open({
                type:1,
                area:'370px',
                content:$("#addSortFrom")
            });
        });

        // 刷新
        $('#btn-refresh').on('click', function () {
            tableIns.reload();
        });


        // you code ...

    });
</script>
<!-- 表格操作按钮集 -->
<script type="text/html" id="barOption">
    <a class="layui-btn layui-btn-mini layui-btn-normal" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-mini layui-btn-danger" lay-event="del">删除</a>
</script>
</body>
</html>