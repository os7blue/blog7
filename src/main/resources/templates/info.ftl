<#include "site/head.ftl">
<article>
  <!--lbox begin-->
  <div class="lbox">
    <div class="content_box whitebg">
      <h2 class="htitle"><span class="con_nav">您现在的位置是：<a href="/">网站首页</a>>文章详情</span>文章内容</h2>
      <h1 class="con_tilte">${article.title}</h1>
      <p class="con_info"><b>简介</b>本文创建于：${article.createTime?c?number?number_to_datetime} 最后一次更新于：${article.updateTime?c?number?number_to_datetime}</p>
      <div class="con_text">
        ${article.content}
        <p class="share"><b>转载：</b>感谢您对个人博客网站平台的认可，以及对我们原创作品以及文章的青睐，非常欢迎各位朋友分享到个人站长或者朋友圈，但转载请说明文章出处“来源个人博客”。</p>
        <p><span class="diggit">很赞哦！ (74)</span></p>
        <div class="nextinfo">

          <#if upAndDownArticle?size==2>
            <#if upAndDownArticle[0]??>
              <p>上一篇：<a href="/article/${upAndDownArticle[0].id}">${upAndDownArticle[0].title}</a></p>
            </#if>
            <#if upAndDownArticle[1]??>
              <p>下一篇：<a href="/article/${upAndDownArticle[1].id}">${upAndDownArticle[1].title}</a></p>
            </#if>
          <#elseif upAndDownArticle?size==1>
             <#if upAndDownArticle[0].id lt article.id>
               <p>上一篇：<a href="/article/${upAndDownArticle[0].id}">${upAndDownArticle[0].title}</a></p>
             <#else >
               <p>下一篇：<a href="/article/${upAndDownArticle[0].id}">${upAndDownArticle[0].title}</a></p>
             </#if>
          </#if>


        </div>
      </div>
    </div>
    <div class="whitebg">

    </div>

    <div class="whitebg gbook">
      <h2 class="htitle">文章评论</h2>
        <form>
          <input name="content" id="content" class="input_text" placeholder="请输入关键字词" style="color: rgb(153, 153, 153);" type="text">
        </form>
      <ul>
      </ul>
    </div>
  </div>
  <!--lbox end-->
  <#include "site/right.ftl">
</article>
<#include "site/foot.ftl">