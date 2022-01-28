<div class="rbox">
    <div class="card">
        <h2>我的名片</h2>
        <p>称呼：os7blue | 柒蓝</p>
        <p>职业：java后端</p>
        <p>现居：北京市-海淀区</p>
        <p>Email：os7blue@163.com</p>
        <ul class="linkmore">
            <li><a href="/" target="_blank" class="iconfont icon-zhuye" title="网站地址"></a></li>
            <li><a href="/"
                   target="_blank" class="iconfont icon-youxiang" title="我的邮箱"></a></li>
            <li><a href="/" target="_blank"
                   class="iconfont icon---" title="QQ联系我"></a></li>
            <li id="weixin"><a href="#" target="_blank" class="iconfont icon-weixin" title="关注我的微信"></a><i><img
                            src="/qrcode_for_gh_9ae4f73671bd_344.jpg"></i></li>
        </ul>
    </div>
    <#--        <div class="whitebg notice">-->
    <#--            <h2 class="htitle">网站公告</h2>-->
    <#--            <ul>-->
    <#--                <li><a href="/">十条设计原则教你学会如何设计网页布局!</a></li>-->
    <#--                <li><a href="/">用js+css3来写一个手机栏目导航</a></li>-->
    <#--                <li><a href="/">6条网页设计配色原则,让你秒变配色高手</a></li>-->
    <#--                <li><a href="/">三步实现滚动条触动css动画效果</a></li>-->
    <#--            </ul>-->
    <#--        </div>-->
    <div class="whitebg paihang">
        <h2 class="htitle">点击排行</h2>
        <#--            <section class="topnews imgscale"><a href="/"><img src="images/h1.jpg"><span>6条网页设计配色原则,让你秒变配色高手</span></a>-->
        <#--            </section>-->
        <ul>
            <#if topViewArticleList?? && topViewArticleList?size!=0>
                <#list topViewArticleList as article>
                    <li><i></i><a href="/article/${article.id}">${article.title}</a></li>
                </#list>
            </#if>

        </ul>
    </div>
    <div class="whitebg tuijian">
        <h2 class="htitle">随机推荐</h2>
<#--        <section class="topnews imgscale"><a href="/"><img src="images/h2.jpg"><span>6条网页设计配色原则,让你秒变配色高手</span></a>-->
        </section>
        <ul>

            <#if randViewArticleList?? && randViewArticleList?size!=0>
                <#list randViewArticleList as article>

                    <li><a href="/article/${article.id}"><i><img src="${article.titleImg}"></i><p>${article.title}</p></a></li>

                </#list>
            </#if>
        </ul>
    </div>
<#--    <div class="ad whitebg imgscale">-->
<#--        <ul>-->
<#--            <a href="/"><img src="images/ad.jpg"></a>-->
<#--        </ul>-->
<#--    </div>-->

    <div class="whitebg cloud">
        <h2 class="htitle">标签云</h2>
        <ul>
            <a href="" target="_blank">个人博客模板</a> <a href="" target="_blank">css动画</a> <a href="" target="_blank">布局</a> <a href="" target="_blank">今夕何夕</a> <a href="" target="_blank">SEO</a> <a href="" target="_blank">女程序员</a> <a href="" target="_blank">小世界</a> <a href="" target="_blank">个人博客</a> <a href="" target="_blank">网页设计</a>
        </ul>
    </div>

<#--    <div class="ad whitebg imgscale">-->
<#--        <ul>-->
<#--            <a href="/"><img src="images/ad02.jpg"></a>-->
<#--        </ul>-->
<#--    </div>-->
    <div class="whitebg tongji">
        <h2 class="htitle">站点信息</h2>
        <ul>
            <li><b>建站时间</b>：2018-10-24</li>
            <li><b>网站程序</b>：java</li>
            <li><b>文章统计</b>：${viewArticleCount}</li>
            <li><b>文章评论</b>：${viewCommentCount}</li>
            <li><b>统计数据</b>：<a href="/">百度统计</a></li>
            <li><b>微信公众号</b>：扫描二维码，关注我们</li>
            <img src="/qrcode_for_gh_9ae4f73671bd_344.jpg" class="tongji_gzh">
        </ul>
    </div>
    <div class="links whitebg">
        <h2 class="htitle"><span class="sqlink"><a href="/">申请链接</a></span>友情链接</h2>
        <ul>
            <li><a href="/" target="_blank">${siteOption.siteTitle}</a></li>
        </ul>
    </div>
</div>