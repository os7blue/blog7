<#include "site/head.ftl">
<!--top end-->
<article>
    <div class="whitebg timebox">
        <h2 class="htitle">往期文章</h2>
        <ul id="list" style="display:block;">

            <#list articleList as article >
                <li><span>${article.createTime?c?number?number_to_datetime}</span><i><a href="/article/${article.id}" target="_blank">${article.title}</a></i></li>
            </#list>
        </ul>
        <#if pageNum??>

            <#if pageNum !=1>
                <a href="/time/page/${pageNum-1}">上一页</a>&nbsp;
            </#if>

            <#if pageNum *7 < articleListCount  >
                <a href="/time/page/${pageNum+1}">下一页</a>&nbsp;
            </#if>

        </#if>

    </div>
</article>

<#include "site/foot.ftl">