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
    <a class="logo" href="javascript:void(0);" title="">os7blue个人博客</a>
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

<div class="main layui-anim layui-anim-upbit layui-clear">
  <div class="layui-row layui-col-space15">
    <!-- left panel -->
    <div class="layui-col-md8">

      <!-- carousel -->
      <div class="layui-carousel fly-carousel" id="carousel">
        <div carousel-item>
          <div>条目1</div>
          <div>条目2</div>
          <div>条目3</div>
          <div>条目4</div>
          <div>条目5</div>
        </div>
      </div>
      <!--<div class="fly-tab fly-tab-index">
        <span>
          <a href="jie/index.ftl">全部</a>
          <a href="jie/index.ftl">未结帖</a>
          <a href="jie/index.ftl">已采纳</a>
          <a href="jie/index.ftl">精帖</a>
          <a href="user/index.ftl">我的帖</a>
        </span>
        <form action="http://cn.bing.com/search" class="fly-search">
          <i class="iconfont icon-sousuo"></i>
          <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
        </form>
        <a href="jie/add.html" class="layui-btn jie-add">发布问题</a>
      </div>-->
      <!-- list -->
      <ul class="fly-list">

        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user.html" class="fly-list-avatar">
            <img src="/res/images/blog.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="detail.html">浏览器收藏栏之我的最爱</a>
          </h2>
          <div class="fly-badge">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>
          </div>
          <div class="fly-content-text">生活中保存了不少的网站,以供以后快捷的浏览信息,这个是我生活中保存的一些我喜欢的网站收藏</div>
          <p class="layui-elip">
            <span><i class="layui-icon">&#xe612;</i> <a href="user.html">某某某</a></span>
            <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
            <span><i class="layui-icon">&#xe857;</i> 其他</span>
          <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> 6830
            <i class="layui-icon" title="议论">&#xe63a;</i> 317
          </span>
          </p>
        </li>

      </ul>
      <!-- more -->
      <div style="text-align: center">
          <div class="laypage-main">
            <a href="javascript:void(0);" class="laypage-next">更多求解</a>
          </div>
        </div>

    </div>
    <!-- right panel -->
    <div class="layui-col-md4">

      <!-- weather -->
      <div class="fly-panel fly-list-one fly-weather">
        <span class="layui-badge-rim layui-bg-blue fly-day">今日天气</span>
        <span class="layui-badge-rim fly-city">···</span>
        <h2>···</h2>
        <p class="fly-wd">···</p>
        <p class="fly-fx">···</p>
      </div>
      <!-- top 12 -->
      <!--<div class="fly-panel leifeng-rank">
        <h3 class="fly-panel-title">近一月回答榜 - TOP 12</h3>
        <dl>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
          <dd>
            <a href="user.html">
              <img src="/res/images/avatar/default.png">
              <cite>纸飞机</cite>
              <i>159次回答</i>
            </a>
          </dd>
        </dl>
      </div>-->
      <!-- tag -->
      <div class="fly-panel fly-list-one fly-tag">
        <h3 class="fly-panel-title">标签云</h3>
        <div class="fly-panel-content">
          <a href="javascript:void(0);" class="layui-badge layui-bg-orange">技巧</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-green">PHP</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-cyan">前端</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-blue">后台</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-black">经验</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-orange">技巧</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-green">PHP</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-cyan">前端</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-blue">后台</a>
          <a href="javascript:void(0);" class="layui-badge layui-bg-black">经验</a>
        </div>
      </div>
      <!-- 最近综合 -->
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">最近综合</dt>
        <dd>
          <a href="detail.html">浏览器收藏栏之我的最爱浏览器收藏栏之我的最爱</a>
          <span><i class="layui-icon">&#xe637;</i>10-20</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之常用工具</a>
          <span><i class="layui-icon">&#xe637;</i>10-19</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe637;</i>10-19</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe637;</i>10-19</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之我的最爱</a>
          <span><i class="layui-icon">&#xe637;</i>10-17</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之常用工具</a>
          <span><i class="layui-icon">&#xe637;</i>10-17</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe637;</i>10-17</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe637;</i>10-15</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe637;</i>10-10</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe63c;</i>10-05</span>
        </dd>
      </dl>
      <!-- 最近人气 -->
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">最近人气</dt>
        <dd>
          <a href="detail.html">浏览器收藏栏之我的最爱浏览器收藏栏之我的最爱</a>
          <span><i class="layui-icon">&#xe756;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之常用工具</a>
          <span><i class="layui-icon">&#xe756;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe756;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe756;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之我的最爱</a>
          <span><i class="layui-icon">&#xe756;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之常用工具</a>
          <span><i class="layui-icon">&#xe756;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe756;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe756;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe756;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe756;</i> 767</span>
        </dd>
      </dl>
      <!-- 最近热议 -->
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">近期热议</dt>
        <dd>
          <a href="detail.html">浏览器收藏栏之我的最爱浏览器收藏栏之我的最爱</a>
          <span><i class="layui-icon">&#xe63a;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之常用工具</a>
          <span><i class="layui-icon">&#xe63a;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe63a;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe63a;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之我的最爱</a>
          <span><i class="layui-icon">&#xe63a;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之常用工具</a>
          <span><i class="layui-icon">&#xe63a;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe63a;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe63a;</i> 767</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之网站阅读</a>
          <span><i class="layui-icon">&#xe63a;</i> 6087</span>
        </dd>
        <dd>
          <a href="detail.html">浏览器收藏栏之前端工具插件</a>
          <span><i class="layui-icon">&#xe63a;</i> 767</span>
        </dd>
      </dl>
      <!-- 友链 -->
      <div class="fly-panel fly-link">
        <h3 class="fly-panel-title">友情链接</h3>
        <dl>
          <dd>
            <a class="layui-btn layui-btn-small layui-btn-primary" href="http://www.layui.com/" target="_blank">layui</a>
          </dd>
          <dd>
            <a class="layui-btn layui-btn-small layui-btn-primary" href="http://layim.layui.com/" target="_blank">LayIM</a>
          </dd>
          <dd>
            <a class="layui-btn layui-btn-small layui-btn-primary" href="http://layer.layui.com/" target="_blank">layer</a>
          </dd>
        </dl>
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

<div class="city-box layui-hide">
  <div class="city-content-box padding-10">
    <form class="layui-form city-search-box" action="" >
      <div class="layui-input-inline">
        <div class="layui-input-inline">
          <input type="text" name="city" required lay-verify="required" placeholder="输入城市" autocomplete="off" class="layui-input" />
        </div>
        <div class="layui-input-inline">
          <button class="layui-btn layui-btn-normal" lay-submit lay-filter="city-submit">确定</button>
        </div>
      </div>
    </form>
    <span class="layui-badge-rim">北京</span>
    <span class="layui-badge-rim">上海</span>
    <span class="layui-badge-rim">杭州</span>
    <span class="layui-badge-rim">深圳</span>
    <span class="layui-badge-rim">广州</span>
    <span class="layui-badge-rim">成都</span>
  </div>
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