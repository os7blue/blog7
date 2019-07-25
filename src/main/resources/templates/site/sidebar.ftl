<!-- right panel -->
<div class="layui-col-md4">



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


    <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">一言</dt>

        <p id="hitokoto" style="text-align: center; width: 87%;margin: 0 auto;">:D 获取中...</p>

        <iframe style="position:relative;display:table-cell;text-align:center;vertical-align:middle;margin: 0 auto;" frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//music.163.com/outchain/player?type=2&id=32977382&auto=1&height=66"></iframe>

        <!-- 以下写法，选取一种即可 -->

        <!-- 现代写法，推荐 -->
        <!-- 兼容低版本浏览器 (包括 IE)，可移除 -->
        <script src="https://cdn.jsdelivr.net/npm/bluebird@3/js/browser/bluebird.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/whatwg-fetch@2.0.3/fetch.min.js"></script>
        <!--End-->
        <script>
            fetch('https://v1.hitokoto.cn')
                .then(function (res){
                    return res.json();
                })
                .then(function (data) {
                    var hitokoto = document.getElementById('hitokoto');
                    hitokoto.innerText = data.hitokoto;
                })
                .catch(function (err) {
                    console.error(err);
                })
        </script>



    </dl>

    
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