<div class="footer">
<#--    <p>-->
<#--        <a href="http://fly.layui.com/" target="_blank">layui</a>-->
<#--        <a href="http://layim.layui.com/" target="_blank">layim</a>-->
<#--        <a href="http://layer.layui.com/" target="_blank">layer</a>-->
<#--    </p>-->

    <p><a href="http://blog.os7blue.com/" target="_blank">blog7</a> 2019 &copy; <a href="https://blog7.os7blue.com/" target="_blank">blog7</a></p>
</div>

<div class="city-box layui-hide">
    <div class="city-content-box padding-10">
        <form class="layui-form city-search-box" action="" >
            <div class="layui-input-inline">
                <div class="layui-input-inline">
                    <input type="text" name="city" required lay-verify="required" placeholder="输入城市" autocomplete="off" class="layui-input" />
                </div>
                <div class="layui-input-inline">
                    <button class="layui-btn layui-btn-normal" lay-submit lay-filter="city-submit">确定</button>
                </div>
            </div>
        </form>
        <span class="layui-badge-rim">北京</span>
        <span class="layui-badge-rim">上海</span>
        <span class="layui-badge-rim">杭州</span>
        <span class="layui-badge-rim">深圳</span>
        <span class="layui-badge-rim">广州</span>
        <span class="layui-badge-rim">成都</span>
    </div>
</div>

<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>

<script src="/res/layui/layui.js"></script>

<script>
    layui.config({
        version: "2.0.0"
        ,base: '/res/mods/'
    }).extend({
        fly: 'index',
        view: 'view'
    }).use(['fly','view']);
</script>
</body>
</html>