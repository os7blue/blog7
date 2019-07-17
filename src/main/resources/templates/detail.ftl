<#include "site/header.ftl">

<div class="main layui-anim layui-anim-upbit layui-clear">
  <div class="layui-row layui-col-space15">
    <!-- left panel -->
    <div class="layui-col-md8 detail">
        <div class="fly-panel detail-box">
          <h1>${at.title}</h1>
          <div class="fly-tip fly-detail-hint" data-id="{{rows.id}}">
            <span class="layui-badge-rim layui-bg-black">精贴</span>
            <span class="layui-badge-rim layui-bg-red">置顶</span>

            <div class="fly-list-hint">
              <i class="layui-icon" title="人气">&#xe756;</i> ${at.views}
              <i class="layui-icon" title="评论">&#xe63a;</i> ${at.commentTotal}
            </div>
          </div>
          <!--<div class="detail-about">
            <a class="jie-user" href="">
              <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0" alt="">
              <cite>
                某某某
                <em>1分钟前发布</em>
              </cite>
            </a>
            <div class="detail-hits" data-id="{{rows.id}}">
              <span style="color:#FF7200">悬赏：20飞吻</span>
              <span class="layui-btn layui-btn-mini jie-admin" type="edit"><a href="">编辑此贴</a></span>
              <span class="layui-btn layui-btn-mini jie-admin " type="collect" data-type="add">收藏</span>
              <span class="layui-btn layui-btn-mini jie-admin  layui-btn-danger" type="collect" data-type="add">取消收藏</span>
            </div>
          </div>-->

          <div class="detail-body photos" style="margin-bottom: 20px;">

            <p>
              文章发布于${at.createTime?c?number?number_to_datetime},最近一次编辑于${at.createTime?c?number?number_to_datetime}，转载请注明出处
            </p>
            <p>
              <img src="${at.titleImg}" alt="Fly社区">
              ${at.content}
            </p>

          </div>
        </div>
        <div class="fly-panel detail-box" style="padding-top: 0;">
          <a name="comment"></a>
          <ul class="jieda photos" id="jieda">

            <li data-id="12" class="jieda-daan">
              <a name="item-121212121212"></a>
              <div class="detail-about detail-about-reply">
                <a class="jie-user" href="">
                  <img src="/res/images/avatar/default.png" alt="">
                  <cite>
                    <i>一楼</i>
                    <!-- <em>(楼主)</em>
                    <em style="color:#5FB878">(管理员)</em>
                    <em style="color:#FF9E3F">（活雷锋）</em>
                    <em style="color:#999">（该号已被封）</em> -->
                  </cite>
                </a>
                <div class="detail-hits">
                  <span>3分钟前</span>
                </div>
              </div>
              <div class="detail-body jieda-body">
                <p>抢楼!!!</p>
              </div>
              <div class="jieda-reply">
                <span class="jieda-zan zanok" type="zan"><i class="iconfont icon-zan"></i><em>12</em></span>
                <span type="reply"><i class="iconfont icon-svgmoban53"></i>回复</span>
                <!-- <div class="jieda-admin">
                  <span type="edit">编辑</span>
                  <span type="del">删除</span>
                  <span class="jieda-accept" type="accept">采纳</span>
                </div> -->
              </div>
            </li>

            <li data-id="13">
              <a name="item-121212121212"></a>
              <div class="detail-about detail-about-reply">
                <a class="jie-user" href="">
                  <img src="/res/images/avatar/default.png" alt="">
                  <cite>
                    <i>二楼</i>
                    <!--<em style="color:#FF9E3F">活雷锋</em>-->
                  </cite>
                </a>
                <div class="detail-hits">
                  <span>刚刚</span>
                </div>
              </div>
              <div class="detail-body jieda-body">
                <p>板凳~~~</p>
              </div>
              <div class="jieda-reply">
                <span class="jieda-zan" type="zan"><i class="iconfont icon-zan"></i><em>0</em></span>
                <span type="reply"><i class="iconfont icon-svgmoban53"></i>回复</span>
                <div class="jieda-admin">
                  <span type="edit">编辑</span>
                  <span type="del">删除</span>
                  <span class="jieda-accept" type="accept">采纳</span>
                </div>
              </div>
            </li>

            <!--<li class="fly-none">没有任何议论</li>-->
          </ul>

          <div class="layui-form layui-form-pane">
            <form action="" method="post">
              <div class="layui-form-item layui-form-text">
                <div class="layui-input-block">
                  <textarea id="L_content" name="content" required lay-verify="required" placeholder="我要议论"  class="layui-textarea fly-editor" style="height: 150px;"></textarea>
                </div>
              </div>
              <div class="layui-form-item">
                <input type="hidden" name="jid" value="{{rows.id}}">
                <button class="layui-btn" lay-filter="*" lay-submit>提交回答</button>
              </div>
            </form>
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

<#include "site/footer.ftl">