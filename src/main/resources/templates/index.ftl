<#include "site/header.ftl">

<div class="main layui-anim layui-anim-upbit layui-clear">
  <div class="layui-row layui-col-space15">
    <!-- left panel -->
    <div class="layui-col-md8">

      <!-- carousel -->
      <div class="layui-carousel fly-carousel" id="carousel">
        <div carousel-item>
          <div><a href="/article/id" target="_blank"><img src=""></a></div>
          <#list ratList as rat>
            <a style="background-image: url('${rat.titleImg}');" href="/article/${rat.id}" target="_blank">${rat.title}</a>

          </#list>
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




        <#list atList as at>
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
      <!-- more -->
      <div style="text-align: center">
          <div class="laypage-main">
            <a href="javascript:void(0);" class="laypage-next">更多求解</a>
          </div>
        </div>

    </div>

    <#include "site/sidebar.ftl">

    </div>
  </div>
</div>

<#include "site/footer.ftl">