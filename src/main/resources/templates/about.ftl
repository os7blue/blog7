<#include "site/header.ftl">

<div class="fly-home">
    <img src="../res/images/avatar/default.png">
    <h1>
        某某某
        <i class="iconfont icon-nan"></i>
        <i class="iconfont icon-nv"></i>

        <!--<span style="color:#c00;">（超级码农）</span>
        <span style="color:#5FB878;">（活雷锋）</span>
        <span>（该号已被封）</span>-->
    </h1>
    <p class="fly-home-info">
        <i class="layui-icon">&#xe637;</i><span>2000-00-00</span>
        <i class="layui-icon">&#xe715;</i><span>来自地球</span>
    </p>
    <p class="fly-home-sign">···</p>
</div>

<div class="main fly-home-main">
    <div class="layui-inline fly-home-jie">
        <div class="fly-panel">
            <h3 class="fly-panel-title">时间线</h3>
            <ul class="layui-timeline">

                <#list timeLineMap?keys as k>

                    <li class="layui-timeline-item">
                        <i class="layui-icon layui-timeline-axis"></i>
                        <div class="layui-timeline-content layui-text">
                            <h3 class="layui-timeline-title">${k}</h3>
                            <p>
                                <#list timeLineMap[k] as line >
                                    <a href="/article/${line.id}" target="_blank">${line.title}</a>
<#--                                    <span><i class="layui-icon">&#xe756;</i>${line.views}</span>-->
<#--                                    <span><i class="layui-icon">&#xe63a;</i>${line.commentTotal}</span>-->
                                    <br/>

                                </#list>
                            </p>
                        </div>
                    </li>


                </#list>

            </ul>
            <!--<div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><i style="font-size:14px;">没有发布任何文章</i></div>-->
        </div>
    </div>

    <div class="layui-inline fly-home-da">
        <div class="fly-panel">
            <h3 class="fly-panel-title">最近动态</h3>
            <ul class="home-jieda">
                <li>
                    <p>
                        <span>1分钟前</span>
                        在<a href="" target="_blank">tips能同时渲染多个吗?</a>中回答：
                    </p>
                    <div class="home-dacontent">
                        尝试给layer.photos加上这个属性试试：
                        <pre>
                        full: true
                        </pre>
                        文档没有提及
                    </div>
                </li>
            </ul>
            <!-- <div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><span>没有回答任何问题</span></div> -->
        </div>
    </div>

</div>

<#include "site/footer.ftl">