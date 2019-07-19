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
      <!-- top 12 &ndash;&gt;
      <div class="fly-panel leifeng-rank">
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
      </div>
<#--      <!-- tag &ndash;&gt;-->
<#--      <div class="fly-panel fly-list-one fly-tag">-->
<#--        <h3 class="fly-panel-title">标签云</h3>-->
<#--        <div class="fly-panel-content">-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-orange">技巧</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-green">PHP</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-cyan">前端</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-blue">后台</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-black">经验</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-orange">技巧</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-green">PHP</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-cyan">前端</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-blue">后台</a>-->
<#--          <a href="javascript:void(0);" class="layui-badge layui-bg-black">经验</a>-->
<#--        </div>-->
<#--      </div>-->
      <!-- 最近综合 -->
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">最多访问</dt>

        <#list vatList as vat>

          <dd>
            <a href="/article/${vat.id}" target="_blank">${vat.title}</a>
            <span><i class="layui-icon">&#xe756;</i>${vat.views}</span>
            <span><i class="layui-icon">&#xe63a;</i>${vat.commentTotal}</span>

          </dd>

        </#list>


      </dl>
      <!-- 最近人气 -->
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">最多评论</dt>

        <#list catList as cat>

          <dd>
            <a href="/article/${cat.id}" target="_blank">${cat.title}</a>
            <span><i class="layui-icon">&#xe756;</i>${cat.views}</span>
            <span><i class="layui-icon">&#xe63a;</i>${cat.commentTotal}</span>

          </dd>

        </#list>

      </dl>
      <!-- 最近热议 -->
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">猜你喜欢</dt>

        <#list ratList as rat>

          <dd>
            <a href="/article/${rat.id}" target="_blank">${rat.title}</a>
            <span><i class="layui-icon">&#xe756;</i>${rat.views}</span>
            <span><i class="layui-icon">&#xe63a;</i>${rat.commentTotal}</span>

          </dd>

        </#list>

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

<#include "site/footer.ftl">