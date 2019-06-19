<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登入</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <link rel="stylesheet" href="/res/layui/css/layui.css">
  <link rel="stylesheet" href="/res/css/global.css">
</head>
<body>

<div class="header">
  <div class="main">
    <a class="logo" href="javascript:void(0);" title=""></a>

    <div class="nav">
      <a href="javascript:void(0);">前端</a>
      <a href="javascript:void(0);">后台</a>
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

<div class="main layui-clear">

  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief">
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form method="post">
              <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_email" name="email" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_pass" name="pass" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>

              <div class="layui-form-item">
                <button class="layui-btn" lay-filter="*" lay-submit>立即登录</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>

<div class="footer">
  <p>
    <a href="http://fly.layui.com/" target="_blank">layui</a>
    <a href="http://layim.layui.com/" target="_blank">layim</a>
    <a href="http://layer.layui.com/" target="_blank">layer</a>
  </p>
  <p><a href="http://blog.vip-admin.com/" target="_blank">博客</a> 2017 &copy; <a href="https://www.vip-admin.com/" target="_blank">vip-admin.com</a></p>
</div>

<script src="/res/layui/layui.js"></script>
<script>
layui.config({
  version: "2.0.0"
  ,base: '/res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
  
</script>
</body>
</html>