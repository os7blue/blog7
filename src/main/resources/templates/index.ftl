<#include "site/head.ftl">
<article>
    <!--lbox begin-->
    <div class="lbox">
        <!--banbox begin-->
        <div class="banbox">
            <div class="banner">
                <div id="banner" class="fader">
                    <#if randViewArticleList?? && randViewArticleList?size!=0>
                        <#list randViewArticleList as article>

                            <li class="slide">
                                <a href="/article/${article.id}" target="_blank">
                                    <img src="${article.titleImg}">
                                </a>
                                <a  href="/article/${article.id}" style="background: #1C2327;position: absolute;left: 10px;top: 20px;padding:2px;font-size: 14px;color: #fff;">&nbsp;${article.title}&nbsp;</a>
                            </li>

                        </#list>
                    </#if>
                    <div class="fader_controls">
                        <div class="page prev" data-target="prev"></div>
                        <div class="page next" data-target="next"></div>
                        <ul class="pager_list">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--banbox end-->
        <!--headline begin-->
        <div class="headline">
            <ul>
                <li><a href="/article/${topViewArticleList[0].id}" title="${topViewArticleList[0].title}"><img src="${topViewArticleList[0].titleImg}" alt="${topViewArticleList[0].title}"><span>${topViewArticleList[0].title}</span></a>
                </li>
                <li><a href="/article/${randViewArticleList[0].id}" title="${randViewArticleList[0].title}"><img src="${randViewArticleList[0].titleImg}" alt="${randViewArticleList[0].title}"><span>${randViewArticleList[0].title}</span></a>
                </li>

            </ul>
        </div>
        <!--headline end-->
        <div class="clearblank"></div>
        <#--    分类标签，暂时不用-->
        <#--    <div class="tab_box whitebg">-->
        <#--      <div class="tab_buttons">-->
        <#--        <ul>-->
        <#--          <li class="newscurrent">个人博客</li>-->
        <#--          <li>工作日记</li>-->
        <#--          <li>心路历程</li>-->
        <#--          <li>我的博客</li>-->
        <#--          <li>前端技术</li>-->
        <#--        </ul>-->
        <#--      </div>-->
        <#--      <div class="newstab">-->
        <#--        <div class="newsitem">-->
        <#--          <div class="newspic">-->
        <#--            <ul>-->
        <#--              <li><a href="/"><img src="images/2.jpg"><span>个人博客，属于我的小世界！</span></a></li>-->
        <#--              <li><a href="/"><img src="images/4.jpg"><span>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</span></a></li>-->
        <#--            </ul>-->
        <#--          </div>-->
        <#--          <ul class="newslist">-->
        <#--            <li><i></i><a href="/">个人博客，属于我的小世界！</a>-->
        <#--              <p>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">安静地做一个爱设计的女子</a>-->
        <#--              <p>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">我是怎么评价自己的？</a>-->
        <#--              <p>为了挨打轻一些，问我哪里来的，我瞎说了一个说那个谁家的，结果，打得更凶。最后事情还原了真相，我妈说，你要说说奶奶家的，都不会打你了。从此以后，我知道撒谎是会付出更惨痛的代价的，我不再撒谎，也不喜欢爱撒谎的人。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a>-->
        <#--              <p>不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">做个人博客如何用帝国cms美化留言增加头像选择</a>-->
        <#--              <p>帝国cms的留言板系统很简单，用户名，邮箱，电话，没有头像显示，如果要增加头像选择，而又不增加表或者字段的情况下，选择改用其中一个字段，比如电话这个，修改一下即可</p>-->
        <#--            </li>-->
        <#--          </ul>-->
        <#--        </div>-->
        <#--        <div class="newsitem">-->
        <#--          <div class="newspic">-->
        <#--            <ul>-->
        <#--              <li><a href="/"><img src="images/3.jpg"><span>个人博客，属于我的小世界！</span></a></li>-->
        <#--              <li><a href="/"><img src="images/1.jpg"><span>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</span></a></li>-->
        <#--            </ul>-->
        <#--          </div>-->
        <#--          <ul class="newslist">-->
        <#--            <li><i></i><a href="/">安静地做一个爱设计的女子</a>-->
        <#--              <p>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">我是怎么评价自己的？</a>-->
        <#--              <p>为了挨打轻一些，问我哪里来的，我瞎说了一个说那个谁家的，结果，打得更凶。最后事情还原了真相，我妈说，你要说说奶奶家的，都不会打你了。从此以后，我知道撒谎是会付出更惨痛的代价的，我不再撒谎，也不喜欢爱撒谎的人。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人博客，属于我的小世界！</a>-->
        <#--              <p>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a>-->
        <#--              <p>不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">做个人博客如何用帝国cms美化留言增加头像选择</a>-->
        <#--              <p>帝国cms的留言板系统很简单，用户名，邮箱，电话，没有头像显示，如果要增加头像选择，而又不增加表或者字段的情况下，选择改用其中一个字段，比如电话这个，修改一下即可</p>-->
        <#--            </li>-->
        <#--          </ul>-->
        <#--        </div>-->
        <#--        <div class="newsitem">-->
        <#--          <div class="newspic">-->
        <#--            <ul>-->
        <#--              <li><a href="/"><img src="images/2.jpg"><span>个人博客，属于我的小世界！</span></a></li>-->
        <#--              <li><a href="/"><img src="images/3.jpg"><span>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</span></a></li>-->
        <#--            </ul>-->
        <#--          </div>-->
        <#--          <ul class="newslist">-->
        <#--            <li><i></i><a href="/">我是怎么评价自己的？</a>-->
        <#--              <p>为了挨打轻一些，问我哪里来的，我瞎说了一个说那个谁家的，结果，打得更凶。最后事情还原了真相，我妈说，你要说说奶奶家的，都不会打你了。从此以后，我知道撒谎是会付出更惨痛的代价的，我不再撒谎，也不喜欢爱撒谎的人。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a>-->
        <#--              <p>不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">做个人博客如何用帝国cms美化留言增加头像选择</a>-->
        <#--              <p>帝国cms的留言板系统很简单，用户名，邮箱，电话，没有头像显示，如果要增加头像选择，而又不增加表或者字段的情况下，选择改用其中一个字段，比如电话这个，修改一下即可</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人博客，属于我的小世界！</a>-->
        <#--              <p>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">安静地做一个爱设计的女子</a>-->
        <#--              <p>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。</p>-->
        <#--            </li>-->
        <#--          </ul>-->
        <#--        </div>-->
        <#--        <div class="newsitem" >-->
        <#--          <div class="newspic">-->
        <#--            <ul>-->
        <#--              <li><a href="/"><img src="images/3.jpg"><span>个人博客，属于我的小世界！</span></a></li>-->
        <#--              <li><a href="/"><img src="images/4.jpg"><span>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</span></a></li>-->
        <#--            </ul>-->
        <#--          </div>-->
        <#--          <ul class="newslist">-->
        <#--            <li><i></i><a href="/">安静地做一个爱设计的女子</a>-->
        <#--              <p>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">我是怎么评价自己的？</a>-->
        <#--              <p>为了挨打轻一些，问我哪里来的，我瞎说了一个说那个谁家的，结果，打得更凶。最后事情还原了真相，我妈说，你要说说奶奶家的，都不会打你了。从此以后，我知道撒谎是会付出更惨痛的代价的，我不再撒谎，也不喜欢爱撒谎的人。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人博客，属于我的小世界！</a>-->
        <#--              <p>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a>-->
        <#--              <p>不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">做个人博客如何用帝国cms美化留言增加头像选择</a>-->
        <#--              <p>帝国cms的留言板系统很简单，用户名，邮箱，电话，没有头像显示，如果要增加头像选择，而又不增加表或者字段的情况下，选择改用其中一个字段，比如电话这个，修改一下即可</p>-->
        <#--            </li>-->
        <#--          </ul>-->
        <#--        </div>-->
        <#--        <div class="newsitem" >-->
        <#--          <div class="newspic">-->
        <#--            <ul>-->
        <#--              <li><a href="/"><img src="images/h2.jpg"><span>个人博客，属于我的小世界！</span></a></li>-->
        <#--              <li><a href="/"><img src="images/h1.jpg"><span>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</span></a></li>-->
        <#--            </ul>-->
        <#--          </div>-->
        <#--          <ul class="newslist">-->
        <#--            <li><i></i><a href="/">我是怎么评价自己的？</a>-->
        <#--              <p>为了挨打轻一些，问我哪里来的，我瞎说了一个说那个谁家的，结果，打得更凶。最后事情还原了真相，我妈说，你要说说奶奶家的，都不会打你了。从此以后，我知道撒谎是会付出更惨痛的代价的，我不再撒谎，也不喜欢爱撒谎的人。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人博客，属于我的小世界！</a>-->
        <#--              <p>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">安静地做一个爱设计的女子</a>-->
        <#--              <p>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a>-->
        <#--              <p>不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了</p>-->
        <#--            </li>-->
        <#--            <li><i></i><a href="/">做个人博客如何用帝国cms美化留言增加头像选择</a>-->
        <#--              <p>帝国cms的留言板系统很简单，用户名，邮箱，电话，没有头像显示，如果要增加头像选择，而又不增加表或者字段的情况下，选择改用其中一个字段，比如电话这个，修改一下即可</p>-->
        <#--            </li>-->
        <#--          </ul>-->
        <#--        </div>-->
        <#--      </div>-->
        <#--    </div>-->
        <!--tab_box end-->

        <#--    专题框，暂时不用-->
        <#--    <div class="zhuanti whitebg">-->
        <#--      <h2 class="htitle"><span class="hnav"><a href="/">原创模板</a><a href="/">古典</a><a href="/">清新</a><a href="/">低调</a></span>精彩专题</h2>-->
        <#--      <ul>-->
        <#--        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/1.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>-->
        <#--        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/2.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>-->
        <#--        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/3.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>-->
        <#--        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/4.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>-->
        <#--        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/h2.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>-->
        <#--        <li> <i class="ztpic"><a href="/" target="_blank"><img src="images/h1.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a href="" target="_blank" class="readmore">文章阅读</a> </li>-->
        <#--      </ul>-->
        <#--    </div>-->

        <#--           广告框-->
<#--        <div class="ad whitebg"><img src="images/longad.jpg"></div>-->
        <div class="whitebg bloglist">
            <h2 class="htitle">最新博文</h2>
            <ul>
                <#--        <!--多图模式 置顶设计&ndash;&gt;-->
                <#--        <li>-->
                <#--          <h3 class="blogtitle"><a href="/" target="_blank"><b>【顶】</b>别让这些闹心的套路，毁了你的网页设计!</a></h3>-->
                <#--          <span class="bplist"><a href="/"> <img src="images/b02.jpg" alt=""></a> <a href="/"><img src="images/b03.jpg" alt=""></a> <a href="/"><img src="images/b04.jpg" alt=""> </a><a href="/"><img src="images/b05.jpg" alt=""> </a></span>-->
                <#--          <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>-->
                <#--          <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a href="/">原创模板</a>】</span></p>-->
                <#--        </li>-->
                <!--单图-->
                <#list articleList as article>
                    <li>
                        <h3 class="blogtitle">
                            <a href="/article/${article.id}" target="_blank">${article.title}</a>
                        </h3>
                        <span class="blogpic imgscale">
                            <i>
                                <a href="/sort/${article.parentId}">${(article.parentId==0)?string("默认分类","")}</a>
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

        </div>

        <div class="pagelist">


            <#if pageNum??>

                <#if pageNum !=1>
                    <a href="/page/${pageNum-1}">上一页</a>&nbsp;
                </#if>

                <#if pageNum*7 lt articleListCount  >
                    <a href="/page/${pageNum+1}">下一页</a>&nbsp;
                </#if>

            </#if>
        </div>

        <!--bloglist end-->
    </div>
    <#include "site/right.ftl">
</article>
<#include "site/foot.ftl">