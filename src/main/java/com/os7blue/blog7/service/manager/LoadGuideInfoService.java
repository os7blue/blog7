package com.os7blue.blog7.service.manager;

import com.os7blue.blog7.mapper.ArticleMapper;
import com.os7blue.blog7.model.ViewArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 获取页面引导信息
 */
@Service
public class LoadGuideInfoService {

    @Autowired
    private ArticleMapper articleMapper;


    /**
     * 将文章阅读引导信息添加到model中
     * @param model
     */
    public void loadIndexGuideInfo(Map model){

        //加载侧边栏的文章阅读引导信息  如：最多评论的文章
        //浏览最多的文章
        List<ViewArticle> vatList = articleMapper.selectViewMostArticleList();
        model.put("vatList",vatList);
        //评论最多的文章
        List<ViewArticle> catList = articleMapper.selectCommentMostArticleList();
        model.put("catList",catList);
        //随机获取的文章
        List<ViewArticle> ratList = articleMapper.selectRandomArticle();
        model.put("ratList",ratList);
    }


    /**
     * 随机获取文章
     * @return
     */
    public List<ViewArticle> getRandomArticle(){

        return articleMapper.selectRandomArticle();

    }


    /**
     * 获取最近评论最多的文章简介列表
     * @return
     */
    public List<ViewArticle> getCommentMostArticleList(){
        return articleMapper.selectCommentMostArticleList();
    }


    /**
     * 获取最近浏览最多的文章简介列表
     * @return
     */
    @Autowired
    public List<ViewArticle> getViewMostArticle(){

        return articleMapper.selectViewMostArticleList();


    }
}
