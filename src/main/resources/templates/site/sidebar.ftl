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