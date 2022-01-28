<!doctype html>
<html>
<head>
    <meta charset="utf-8">

    <title>

        <#if isArticle??>
            「${article.title}」-文章详情-${siteOption.siteTitle}

        <#elseif isIndex??>
            <#if pageNum != 1>
                ${siteOption.siteTitle}-第${pageNum}页
            <#else >
                ${siteOption.siteTitle}-首页
            </#if>
        <#elseif isTime??>

            <#if pageNum != 1>
                归档-第${pageNum}页-${siteOption.siteTitle}
            <#else >
                归档-首页-${siteOption.siteTitle}
            </#if>
        <#elseif isSort??>
            <#if pageNum != 1>
                默认分类-第${pageNum}页-${siteOption.siteTitle}
            <#else >
                默认分类-${siteOption.siteTitle}
            </#if>
        <#elseif isSearch??>
            <#if pageNum != 1>
                [${searchValue}]-搜索结果-第${pageNum}页-${siteOption.siteTitle}
            <#else >
                [${searchValue}]-搜索结果-${siteOption.siteTitle}
            </#if>
        </#if>


    </title>

    <meta name="keywords" content="blog"/>
    <meta name="description" content="blog"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/res/css/base.css" rel="stylesheet">
    <link href="/res/css/m.css" rel="stylesheet">
    <script src="/res/js/jquery-1.8.3.min.js"></script>
    <script src="/res/js/comm.js"></script>
    <!--[if lt IE 9]>
    <script src="/res/js/modernizr.js"></script>
    <![endif]-->

<#--    <script data-ad-client="ca-pub-3237344478199913" async-->
<#--            src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>-->
</head>
<body>
<!--top begin-->
<header id="header">
    <div class="navbox">
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <div class="logo"><a href="/">${siteOption.siteTitle}</a></div>
        <nav>
            <ul id="starlist">
                <li><a href="/">首页</a></li>
                <li class="menu">
                    <a href="javascript:;">分类查看</a>
                    <ul class="sub">
                        <li><a href="/sort">默认分类</a></li>
                    </ul>
                    <span></span>
                </li>
                <li><a href="/time">归档</a></li>

                <#--                <li class="menu"><a href="list2.html">博客网站制作</a>-->
                <#--                    <ul class="sub">-->
                <#--                        <li><a href="/6">推荐工具</a></li>-->
                <#--                        <li><a href="/7">JS经典实例</a></li>-->
                <#--                        <li><a href="/8">网站建设</a></li>-->
                <#--                        <li><a href="/7">CSS3|Html5</a></li>-->
                <#--                        <li><a href="/8">心得笔记</a></li>-->
                <#--                    </ul>-->
                <#--                    <span></span></li>-->
                <#--                <li><a href="list3.html">网页设计心得</a></li>-->
                <#--                <li><a href="daohang.html">优秀个人博客</a></li>-->
                <#--                <li><a href="about.html">关于我</a></li>-->
            </ul>
        </nav>
        <div class="searchico"></div>
    </div>
</header>
<div class="searchbox">
    <div class="search">
        <form action="/search" method="get" name="searchform" id="searchform">
            <input name="content" id="content" class="input_text" placeholder="请输入关键字词" style="color: rgb(153, 153, 153);" type="text">
            <input  class="input_submit" value="搜索" type="submit">
        </form>
    </div>
    <div class="searchclose"></div>
</div>
<!--top end-->