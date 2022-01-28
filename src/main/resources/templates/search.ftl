<#include "site/head.ftl">
<!--top end-->
<article>
    <!--lbox begin-->
    <div class="lbox">
        <div class="whitebg bloglist">
            <h2 class="htitle">搜索结果>[${searchValue}]</h2>
            <ul>
                <#list articleList as article>
                    <li>
                        <h3 class="blogtitle">
                            <a href="/article/${article.id}" target="_blank">${article.title}</a>
                        </h3>
                        <span class="blogpic imgscale">
                            <i>
                                <a href="/sort/${article.parentId}">${article.parentId}</a>
                            </i>
                            <a href="/article/${article.id}" title=""><img src="${article.titleImg}" alt=""></a>
                        </span>
                        <p class="blogtext"> ${article.content?replace("<[^>]+>","","r")}</p>
                        <p class="bloginfo">

                            <span>${article.createTime?c?number?number_to_datetime}</span>
                            <span>浏览：${article.views} 评论：${article.commentTotal}</span>
                        </p>

                        <a href="/article/${article.id}" class="viewmore">阅读更多</a>
                    </li>
                </#list>
            </ul>
            <!--pagelist-->

            <div class="pagelist">

                <#if pageNum??>

                    <#if pageNum !=1>
                        <a href="/search?content=${searchValue}&pageNum=${pageNum-1}">上一页</a>&nbsp;
                    </#if>

                    <#if pageNum*7 lt articleListCount   >
                        <a href="/search?content=${searchValue}&pageNum=${pageNum+1}">下一页</a>&nbsp;
                    </#if>

                </#if>
            </div>            <!--pagelist end-->
        </div>

        <!--bloglist end-->
    </div>
    <#include "site/right.ftl">
</article>
<#include "site/foot.ftl">