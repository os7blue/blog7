<#include "site/header.ftl">

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
          <div>条目5</div>
          <div>条目5</div>
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




        <#list atl as at>
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
            <#if at.content?split("pre")?size!=0>
              <div class="fly-content-text">${at.content?split("pre")[0]}</div>

            <#else >
              <div class="fly-content-text">${at.content?substring(0,7)}</div>

            </#if>

            <p class="layui-elip">
              <span><i class="layui-icon">&#xe612;</i> <a href="/about" target="_blank">某某某</a></span>
              <span><i class="layui-icon">&#xe62d;</i> 刚刚</span>
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

<#include "site/footer.ftl">