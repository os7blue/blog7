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
                        文章发布于${at.createTime?c?number?number_to_datetime}
                        ,最近一次编辑于${at.createTime?c?number?number_to_datetime}，转载请注明出处
                    </p>
                    <p>
                        <img src="${at.titleImg}" alt="Fly社区">
                        ${at.content}
                    </p>

                </div>
            </div>
            <div class="fly-panel detail-box" style="padding-top: 0;">
 ?;.;'               <a name="comment"></a>
                <ul class="jieda photos" id="jieda">
                    <#if atc?? && (atc?size > 0)>

                        <#list atc as c>

                            <li data-id="${c.id}">
                                <a name="comment-${c.id}"></a>
                                <div class="detail-about detail-about-reply">
                                    <a class="jie-user" href="${c.url}">
                                        <img src="/res/images/avatar/default.png" alt="">
                                        <cite>
                                            <i>${c.nickName}</i>
                                        </cite>
                                    </a>
                                    <div class="detail-hits">
                                        <span>${c.createTime?c?number?number_to_datetime}</span>
                                    </div>
                                </div>
                                <div class="detail-body jieda-body">
                                    <p>${c.content}</p>
                                </div>
                                <div class="jieda-reply">
                                    <span class="jieda-zan" type="zan"><i class="iconfont icon-zan"></i><em>${c_index}搂</em></span>

                                </div>
                            </li>

                        </#list>
?'///
                        '
                        //////
                    <#else>
                        <li class="fly-none">没有任何评论</li>

                    </#if>



                    <!--<li class="fly-none">没有任何议论</li>-->
                </ul>

                <div class="layui-form layui-form-pane">
                    <form action="" method="post">
                        <div class="layui-form-item">

                            <div class="layui-inline">
                                <label class="layui-form-label">昵称</label>
                                <div class="layui-input-inline" >
                                    <input type="text" name="nickName" lay-verify="required" placeholder="怎么称呼你呢" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-inline">
                                <label class="layui-form-label">Email</label>
                                <div class="layui-input-inline" >
                                    <input type="text" name="email" lay-verify="required|email" placeholder="您的email地址" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-inline">
                                <label class="layui-form-label">您的url</label>
                                <div class="layui-input-inline" >
                                    <input type="text" name="url" lay-verify="required|url" placeholder="http://xxx" autocomplete="off" class="layui-input">
                                    <input type="text" name="parentId" style="display: none;" value="${at.id}" autocomplete="off" class="layui-input">

                                </div>
                            </div>

                            <div class="layui-inline">
                                <label class="layui-form-label">邮件通知</label>
                                <div class="layui-input-inline" >
                                    <input type="checkbox" name="status" value="2" lay-skin="switch" lay-text="ON|OFF" checked>
                                </div>
                            </div>



                        </div>
                        <div class="layui-form-item layui-form-text">
                            <div class="layui-input-block">
                                <textarea id="L_content" name="content" required lay-verify="required"
                                          placeholder="评论内容" class="layui-textarea fly-editor"
                                          style="height: 150px;"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <input type="hidden" name="jid" value="{{rows.id}}">
                            <button class="layui-btn" lay-filter="subArticleComment" lay-submit>提交评论</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <#include "site/sidebar.ftl">

    </div>
</div>

<#include "site/footer.ftl">