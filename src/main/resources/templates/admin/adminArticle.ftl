<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>文章管理</title>
    <link rel="stylesheet" href="/layui25/css/layui.css">
    <link rel="stylesheet" href="/admin/frame/static/css/style.css">
    <link rel="icon" href="/admin/frame/static/image/code.png">
</head>
<body class="body">

<!-- 工具集 -->
<div class="my-btn-box">
    <span class="fl">
        <a class="layui-btn btn-add btn-default" id="btn-refresh"><i class="layui-icon">&#xe669;</i></a>
    </span>
</div>

<!-- 表格 -->
<table id="articleTable" class="layui-table" lay-filter="adt"></table>

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

        // 表格渲染
        var tableIns = table.render({
            elem: '#articleTable'//指定原始表格元素选择器（推荐id选择器）
            , title: '文章管理'
            , height: vipTable.getFullHeight()    //容器高度
            , cols: [[                  //标题栏
                {field: 'id', title: 'ID', width: 80}
                , {field: 'title', title: '标题', width: 120}
                , {field: 'content', title: '内容', width: 120}
                ,{field:'titleImg',title:'封面图',width:120,event:'showImg'}
                , {
                    field: 'createTime', title: '创建日期', width: 120, templet: function (data) {
                        var time = new Date(data.createTime);
                        return time.getFullYear() + "年" + (time.getMonth() + 1) + "月" + time.getDate() + "日 星期" + (time.getDay() + 1) + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();
                    }
                } , {
                    field: 'updateTime', title: '修改日期', width: 120, templet: function (data) {
                        var time = new Date(data.updateTime);
                        return time.getFullYear() + "年" + (time.getMonth() + 1) + "月" + time.getDate() + "日 星期" + (time.getDay() + 1) + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();
                    }
                }
                , {field: 'mark', title: '备注', width: 120}
                , {field: 'views', title: '浏览人数', width: 120}
                , {fixed: 'right', title: '操作', width: 150, align: 'center', toolbar: '#barOption'} //这里的toolbar值是模板元素的选择器
            ]]
            , toolbar: '<span>文章管理</span>'
            , defaultToolbar: ['filter', 'exports', 'print']
            , url: '/admin/article/loadArticleList'
            , method: 'post'
            , page: true
            , limit: 30 //默认采用30
            , limits: [30, 60, 90, 150, 300]
            , loading: true
            , done: function (res, curr, count) {



                //如果是异步请求数据方式，res即为你接口返回的信息。
                //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
                // console.log(res);
                //
                // //得到当前页码
                // console.log(curr);
                //
                // //得到数据总量
                // console.log(count);
            }
        });


        function checkItems(itemId){
            $("select[name='searchMenu'] option").each(function () {
                var val = $(this).val();
                var text = $(this).text();
                if (val==itemId){
                    layer.msg(text);
                }
            });
        }


        // 刷新
        $('#btn-refresh').on('click', function () {
            $("input[name='sv']").val("");
            tableIns.reload({
                where: {},
                toolbar: '用户管理'
            });
        });





        //监听单元格事件
        table.on('tool(dt)', function (obj) {
            var data = obj.data;
            console.log(data);


            if (obj.event === 'showImg') {


                var arr = data.imgPath.split('-');

                var arr1 = [];
                for (var i = 0; i < arr.length; i++) {
                    arr1.push({
                        "src": "/" + arr[i] //原图地址
                    });


                }


                console.log(arr1);
                var img = {
                    "title": "查看上传图片", //相册标题
                    "id": 123, //相册id
                    "start": 0, //初始显示的图片序号，默认0
                    "data": arr1
                };

                layer.photos({
                    photos: img
                    , anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
                });
            }



            if (obj.event==="del"){
                layer.prompt({
                    formType: 2
                    ,title: '请输入缘由'
                }, function(value, index){
                    data.mark=value;
                    $.ajax({
                        type: "POST",
                        url: "/admin/itemInfo/uncheckOneItem",
                        data: JSON.stringify(data),//将对象序列化成JSON字符串
                        dataType: "json",
                        contentType: 'application/json;charset=utf-8', //设置请求头信息
                        success: function (res) {
                            if (res.code == 0) {


                                layer.closeAll('page');
                                layer.msg("操作成功");


                                tableIns.reload({
                                    where: {
                                    }
                                });
                            } else {
                                layer.closeAll('dialog');
                                layer.msg("修改失败，请重试");
                            }
                        },
                        error: function (res) {

                        }
                    });


                });
            }

            if (obj.event === 'showCreator') {
                $.post('/admin/userInfo/getSomeUserInfo', {searchType: 4, searchValue: data.creatorId}, function (res) {
                    if (res.data.length == 0) {
                        layer.open({
                            title: '无数据',
                            content: '暂无数据'
                        });
                        return;
                    }
                    var user = res.data[0],
                        name = '<p>姓名:' + user.name + '</p>',
                        email = '<p>电子邮件地址:' + user.email + '</p>',
                        mark = '<p>备注:' + user.mark + '</p>',
                        tel = '<p>联系电话:' + user.tel + '</p>',
                        studentId = '<p>学号:' + user.studentId + '</p>';

                    var time = new Date(data.createTime);
                    var now = time.getFullYear() + "年" + (time.getMonth() + 1) + "月" + time.getDate() + "日 星期" + (time.getDay() + 1) + " " + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();
                    var createTime = '<p>创建日期:' + now + '</p>';

                    var status = "";
                    switch (user.status) {
                        case 0:
                            status = "未验证";
                            break;
                        case 1:
                            status = "已验证";
                            break;
                        default:
                            status = "其他"

                    }

                    layer.open({
                        title: 'id为[' + user.id + ']的用户详细信息',
                        content: name + email + createTime + status + tel + studentId + mark
                    });
                });
            }




            if (obj.event === 'edit') { //编辑

                layer.open({
                    title:"确认通过吗",
                    content:"请谨慎操作",
                    btn:['确认','取消'],
                    yes:function (index,layero) {
                        $.ajax({
                            type: "POST",
                            url: "/admin/itemInfo/updateOneItemStatus",
                            data: JSON.stringify(data),//将对象序列化成JSON字符串
                            dataType: "json",
                            contentType: 'application/json;charset=utf-8', //设置请求头信息
                            success: function (res) {
                                if (res.code == 0) {


                                    layer.closeAll('page');
                                    layer.msg("操作成功");


                                    tableIns.reload({
                                        where: {
                                        }
                                    });
                                } else {
                                    layer.closeAll('dialog');
                                    layer.msg("修改失败，请重试");
                                }
                            },
                            error: function (res) {

                            }
                        });

                    }
                });

            }
        });


    });
</script>
<!-- 表格操作按钮集 -->
<script type="text/html" id="barOption">
    <a class="layui-btn layui-btn-xs layui-btn-warm" id="trueBtn" lay-event="edit">通过</a>
    <a class="layui-btn layui-btn-xs layui-btn-danger" id="falseBtn" lay-event="del">不通过</a>

</script>

<form class="layui-form" id="editFrom" lay-filter="editFrom" method="post" style="margin-top:10px;display: none">

    <div class="layui-form-item" style="display: none;">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-inline">
            <input type="text" name="id" lay-verify="required" autocomplete="off" placeholder=""
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-inline">
            <input type="text" name="title" lay-verify="required"  autocomplete="off" placeholder=""
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">简介</label>
        <div class="layui-input-inline">
            <input type="text" name="content" lay-verify="required" autocomplete="off" placeholder=""
                   class="layui-input">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
            <select name="status" lay-verify="" class="layui-select">
                <option value="0">未验证</option>
                <option value="1">已验证</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="mark" lay-verify="required" autocomplete="off" placeholder="提供给用户的联系电话号码"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">定价</label>
        <div class="layui-input-inline">
            <input type="text" name="price" lay-verify="required" autocomplete="off" placeholder="提供给用户的联系电话号码"
                   class="layui-input">
        </div>
    </div>





    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="button" class="layui-btn" lay-submit="" lay-filter="submitEditFrom">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
</body>
</html>