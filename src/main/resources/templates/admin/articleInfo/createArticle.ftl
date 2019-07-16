<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>表单</title>
    <link rel="stylesheet" href="/admin/frame/layui/css/layui.css">
    <link rel="stylesheet" href="/admin/frame/static/css/style.css">
    <link rel="icon" href="/admin/frame/static/image/code.png">
    <!-- wangedit富文本编辑器 -->
    <script src="http://unpkg.com/wangeditor/release/wangEditor.min.js"></script>
</head>
<body class="body">


<blockquote class="layui-elem-quote layui-text">
</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>发布新文章</legend>
</fieldset>

<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">文章标题</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
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
        <label class="layui-form-label">文章内容</label>
        <div id="editor" class="layui-input-block">
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="subNewArticle">立即提交</button>
            <button type="btn" lay-submit class="layui-btn layui-btn-primary" lay-filter="previewBtn">预览</button>
        </div>
    </div>
</form>
<!-- 通用-970*90 -->
<div>
    <ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="6835627838"></ins>
</div>


<script src="/admin/frame/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'layer','upload','jquery'], function(){
        var form = layui.form
                ,layer = layui.layer
                ,$=layui.jquery
                ,upload = layui.upload;



        var titlePic = "/res/images/code.png";
        //拖拽上传封面图片
        upload.render({
            elem: '#test10'
            ,url: '/admin/upload/getUrlAfterUpload'
            ,done: function(res){
                //上传成功
                if(res.code === 1){
                    $('#demo1').attr('src', res.data.url);
                    titlePic=res.data.url;
                    return layer.msg('封面图上传成功');
                }
                var demoText = $('#demoText');
                return demoText.html('<span style="color: #FF5722;">上传失败</span>');
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

                var E = window.wangEditor;
        var editor = new E('#editor');
        // 或者 var editor = new E( document.getElementById('editor') )
        editor.customConfig.uploadImgServer =  "/admin/upload/getUrlAfterUpload";
        editor.customConfig.uploadImgMaxLength = 1;
        editor.customConfig.uploadFileName = 'file';


        editor.customConfig.uploadImgHooks = {
            // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
            // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
            customInsert: function (insertImg, result, editor) {

                // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
                // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果

                // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：

                var url = result.data.url;

                if (titlePic==="/res/images/code.png"){
                    titlePic=url;
                }

                layer.msg('上传成功');
                insertImg(url);


                // result 必须是一个 JSON 格式字符串！！！否则报错
            }
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
                content     :   editor.txt.html()
            };
            
            $.post("/admin/article/createArticle",param,function (res) {
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