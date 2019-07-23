<#include "site/header.ftl">

<div class="main layui-clear">
  <div class="wrap">
    <div class="content" style="margin-right:0">
      <!-- <div class="fly-tab">
        <span>
          <a href="" class="tab-this">全部</a>
          <a href="">未结帖</a>
          <a href="">已采纳</a>
          <a href="">精帖</a>
          <a href="../user/index.html">我的帖</a>
        </span>
        <form action="http://cn.bing.com/search" class="fly-search">
          <i class="iconfont icon-sousuo"></i>
          <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
        </form>
        <a href="add.html" class="layui-btn jie-add">发布问题</a>
      </div> -->

      <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>搜索结果-[${searchValue}]</legend>
      </fieldset>
    
      <ul class="fly-list">

        <#list searchList as at>
          <li class="fly-list-li">
            <a href="/article/${at.id}" target="_blank" class="fly-list-avatar">
              <img src="${at.titleImg}" alt="">
            </a>
            <h2 class="fly-tip">
              <a href="/article/${at.id}" target="_blank">${at.title}</a>
            </h2>
            <div class="fly-badge">
              <a href="/" class="layui-badge-rim layui-bg-black">精贴</a>
              <a href="/" class="layui-badge-rim layui-bg-red">置顶</a>
            </div>
            <#--            <#assign preview = at.content?replace("<pre>","")?replace("</pre>","")?replace("<code>","")?replace("</code>","")?replace("<br>","")?replace("</br>","")?replace("&nbsp","")?html>-->
            <#assign preview = at.content?html>

            <a href="/article/${at.id}" target="_blank" class="fly-content-text">${preview}</a>


            <p class="layui-elip">
              <span><i class="layui-icon">&#xe612;</i> <a href="/about" target="_blank">某某某</a></span>
              <span><i class="layui-icon">&#xe62d;</i> ${at.createTime?c?number?number_to_datetime}</span>
              <span><i class="layui-icon">&#xe857;</i> 其他</span>
              <span class="fly-list-hint">
            <i class="layui-icon" title="人气">&#xe756;</i> ${at.views}
            <i class="layui-icon" title="评论">&#xe63a;</i> ${at.commentTotal}
          </span>
            </p>
          </li>
        </#list>

      </ul>
      
      <!-- <div class="fly-none">并无相关数据</div> -->
    
<#--      <div style="text-align: center">-->
<#--        <div class="laypage-main"><span class="laypage-curr">1</span><a href="/jie/page/2/">2</a><a href="/jie/page/3/">3</a><a href="/jie/page/4/">4</a><a href="/jie/page/5/">5</a><span>…</span><a href="/jie/page/148/" class="laypage-last" title="尾页">尾页</a><a href="/jie/page/2/" class="laypage-next">下一页</a></div>-->
<#--      </div>-->
      
    </div>
  </div>
</div>

<#include "site/footer.ftl">