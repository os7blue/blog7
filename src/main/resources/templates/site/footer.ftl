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
    //socket = new WebSocket("ws://localhost:9094/starManager/websocket/张三");
    var socket;
    if(typeof(WebSocket) == "undefined") {
        console.log("您的浏览器不支持WebSocket");
    }else{
        console.log("您的浏览器支持WebSocket");

        //实现化WebSocket对象，指定要连接的服务器地址与端口  建立连接
        //socket = new WebSocket("ws://localhost:9094/starManager/websocket/张三")
        var up = "";
        if (window.location.host==="localhost"){
            up=window.location.host+":"+window.location.port;
        }else {
            up=window.location.host;
        }
        socket = new WebSocket("ws://"+up+"/ws/getPush");
        //打开事件
        socket.onopen = function() {
            console.log("Socket 已打开");
            //socket.send("这是来自客户端的消息" + location.href + new Date());
        };
        //获得消息事件
        socket.onmessage = function(msg) {
            alert(msg.data)
            //发现消息进入    调后台获取
        };
        //关闭事件
        socket.onclose = function() {
            console.log("Socket已关闭");
        };
        //发生了错误事件
        socket.onerror = function() {
            console.log("Socket发生了错误");
        }
        $(window).unload(function(){
            socket.close();
        });

//                            		$("#btnSend").click(function() {
//                            			socket.send("这是来自客户端的消息" + location.href + new Date());
//                            		});
//
//                            		$("#btnClose").click(function() {
//                            			socket.close();
//                            		});
    }
</script>
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