<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="/res/layui/css/layui.css">
    <link rel="stylesheet" href="/res/css/global.css">
</head>
<body>

<div class="header">
    <div class="main">
        <a class="logo" href="/" title="">os7blue个人博客</a>
        <div class="nav">
            <a href="/admin">后台管理</a>
        </div>

        <div class="nav-user ">
            <form class="layui-form fly-article-search" action="" >
                <div class="layui-input-inline">
                    <div class="layui-input-inline">
                        <input type="text" name="data" required lay-verify="required" placeholder="搜索···" autocomplete="off" class="layui-input" />
                    </div>
                    <!--<div class="layui-input-inline">
                      <button class="layui-btn layui-btn-normal layui-icon" lay-submit>&#xe615;</button>
                    </div>-->
                </div>
            </form>
            <!-- 未登入状态 -->
            <!--<span><a href="user/login.ftl">登入</a><a href="user/reg.html">注册</a></span>-->

            <!-- 登入后的状态 -->
            <!--<a class="avatar" href="user.html">
              <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0">
              <cite>贤心</cite>
              <i>VIP2</i>
            </a>-->
        </div>
    </div>
</div>