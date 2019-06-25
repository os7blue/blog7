<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>编写新文章</title>
    <link rel="stylesheet" href="/admin/frame/layui/css/layui.css">
    <link rel="stylesheet" href="/admin/frame/static/css/style.css">
    <link rel="icon" href="/admin/frame/static/image/code.png">
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

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">编写文章</label>
        <div id = "test-editor"class="layui-input-block">
            <#--editor.md编辑器-->
            <textarea style="display:none;">### 关于 Editor.md

**Editor.md** 是一款开源的、可嵌入的 Markdown 在线编辑器（组件），基于 CodeMirror、jQuery 和 Marked 构建。
    </textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
        </div>
    </div>
</form>


<script src="/admin/frame/layui/layui.js" charset="utf-8"></script>

<script src="/admin/edit/src/editormd.js"></script>
<script src="/admin/edit/lib/marked.min.js"></script>
<script src="/admin/edit/lib/prettify.min.js"></script>

<link rel="stylesheet" href="/admin/edit/css/editormd.preview.css" />

<script>
    layui.use(['form', 'layedit', 'laydate','jquery'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,$=layui.jquery;



        $(function() {
            var testView = editormd.markdownToHTML("test-editor", {
                // markdown : "[TOC]\n### Hello world!\n## Heading 2", // Also, you can dynamic set Markdown text
                // htmlDecode : true,  // Enable / disable HTML tag encode.
                // htmlDecode : "style,script,iframe",  // Note: If enabled, you should filter some dangerous HTML tags for website security.
            });
        });




    });
</script>
</body>
</html>