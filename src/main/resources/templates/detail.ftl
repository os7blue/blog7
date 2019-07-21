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

    <#include "site/sidebar.ftl">

  </div>
</div>

<#include "site/footer.ftl">