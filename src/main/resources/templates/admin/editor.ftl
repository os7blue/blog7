<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>编辑文章</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layuimini/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="/layuimini/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">

        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">文章标题</label>
                <div class="layui-input-block">
                    <input type="text" name="title" lay-verify="title|required" autocomplete="off" placeholder="请输入标题" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">

                <div class="layui-inline">
                    <label class="layui-form-label">分类选择</label>
                    <div class="layui-input-inline">

                        <select name="parentId" lay-verify="">
                            <option value="0">默认分类</option>

                        </select>

                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">状态</label>
                    <div class="layui-input-inline">

                        <select name="status" lay-verify="">
                            <option value="0" >禁用</option>
                            <option value="1" >启用</option>
                            <option value="2" >草稿</option>
                        </select>

                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">评论开关</label>
                    <div class="layui-input-inline">
                        <input type="checkbox" name="commentSwitch" value="1" lay-skin="switch" lay-text="允许评论|禁止评论" checked>
                    </div>
                </div>

            </div>


            <div class="layui-form-item">

                <div class="layui-inline">
                    <label class="layui-form-label">封面图</label>
                    <div class="layui-input-inline" >
                        <div class="layui-upload-drag" id="test10">
                            <i class="layui-icon"></i>
                            <p>点击上传，或将文件拖拽到此处</p>
                        </div>
                    </div>
                    <div class="layui-input-inline" >
                        <img class="layui-upload-img" id="demo1" style="width: 190px;height: 156px;">
                        <p id="demoText"></p>
                    </div>
                </div>



            </div>




            <div class="layui-form-item">
                <div id="editor" style="margin: 50px 0 50px 0">
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="subNewArticle">立即提交</button>
                    <button type="btn" lay-submit class="layui-btn layui-btn-primary" lay-filter="previewBtn">预览</button>
                </div>
            </div>
        </form>




    </div>
</div>



<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
<script src="/layuimini/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="/layuimini/js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script type="text/javascript">
    layui.use(['layer','wangEditor','form','upload','jquery','element'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            wangEditor = layui.wangEditor,
            upload = layui.upload,
            form=layui.form,
            element=layui.element;

        //封面图上传配置
        let titlePic = "/res/images/code.png";
        //拖拽上传封面图片
        upload.render({
            elem: '#test10'
            ,url: '/admin/upload/'
            ,progress: function(n, elem){

                let percent = n + '%';//获取进度百分比

                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">封面图上传中...'+percent+'</span>');



            }
            ,done: function(res){

                layer.close(layer.index);

                //上传成功
                if(res.code === 1){
                    $('#demo1').attr('src', res.data);
                    titlePic=res.data;

                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传成功</span>');
                    layer.msg('封面图上传成功');
                }

            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span>');
                // demoText.find('.demo-reload').on('click', function(){
                //     uploadInst.upload();
                // });
            }
        });



        //富文本编辑器配置
        var editor = new wangEditor('#editor');
        editor.customConfig.uploadImgServer = "/admin/upload";
        editor.customConfig.uploadFileName = 'file';
        editor.customConfig.pasteFilterStyle = false;
        editor.customConfig.uploadImgMaxLength = 7;
        editor.customConfig.uploadImgMaxSize = 20 * 1024 * 1024;


        editor.customConfig.uploadImgHooks = {
            // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
            // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
            customInsert: function (insertImg, result, editor) {

                // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
                // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果

                // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：

                var url = result.data;

                if (titlePic==="/res/images/code.png"){
                    titlePic=url[0];
                }


                if (url instanceof Array){

                    for (let i = 0; i < url.length; i++) {
                        insertImg(url[i]);
                    }
                }else {
                    insertImg(url);
                }



                layer.msg('上传成功');



                // result 必须是一个 JSON 格式字符串！！！否则报错
            }
        };

        editor.customConfig.customAlert = function (info) {
            layer.msg(info);
        };
        editor.create();

        //预览
        form.on("submit(previewBtn)",function (data) {
            layer.open({
                type: 1,
                title:'文章内容预览',
                skin: 'layui-layer-lan', //加上边框
                maxmin:true,
                area: ['80%', '80%'], //宽高
                content: editor.txt.html()
            });

            return false;

        });



        //提交文章
        form.on("submit(subNewArticle)",function (data) {
            // layer.open({
            //     type: 1,
            //     skin: 'layui-layer-rim', //加上边框
            //     area: ['80%', '80%'], //宽高
            //     content: editor.txt.html()
            // });

            console.log(data);


            var param = {
                title       :   data.field.title,
                titleImg    :   titlePic,
                content     :   editor.txt.html(),
                parentId    :   data.field.parentId,
                commentSwitch : data.field.commentSwitch,
                status      :   data.field.status
            };

            $.post("/admin/article/create",param,function (res) {
                if (res.code===1){
                    // layer.open({
                    //     type: 1,
                    //     title:'文章发布成功',
                    //     skin: 'layui-layer-lan', //加上边框
                    //     area: ['17%', '17%'],
                    //     content: "<a href='/article/"+res.data+"' target='_blank'>点击预览</a>"
                    // });
                    layer.confirm('是否打开该文章详情页面?', {icon: 3, title:'文章发布成功'}, function(index){
                        //do something
                        window.open("/article/"+res.data);
                        layer.close(index);
                    });
                    return;
                }
                layer.msg("发生错误,请重试");

            });



            return false;

        });

    });
</script>
</body>
</html>