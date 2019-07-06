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
            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
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


        //拖拽上传
        upload.render({
            elem: '#test10'
            ,url: '/admin/upload/afterUploadGetUrl'
            ,done: function(res){
                //如果上传失败
                if(res.code === 1){
                    $('#demo1').attr('src', res.data.url);
                    return layer.msg('封面图上传成功');
                }
                var demoText = $('#demoText');
                return demoText.html('<span style="color: #FF5722;">上传失败</span>');
                //上传成功
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
        editor.customConfig.uploadImgShowBase64 = true;
        editor.create();








    });
</script>
</body>
</html>