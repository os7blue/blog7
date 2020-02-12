package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.entity.model.ViewArticle;
import com.os7blue.blog7.mapper.ArticleMapper;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ArticleService {

    private final ArticleMapper articleMapper;

    public ArticleService(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }


    public int getArticleCount(){
        return articleMapper.selectArticleCount();
    }

    /**
     *  @param article
     * @param page
     * @param limit
     * @return
     */
    public List<ViewArticle> loadArticleList(Article article, Integer page, Integer limit) {

        return articleMapper.selectArticleList(article,page,limit);

    }

    /**
     * 创建文章
     * @param article
     * @return
     */
    public Integer createArticle(Article article) {

        article.setCreateTime(System.currentTimeMillis());
        article.setUpdateTime(System.currentTimeMillis());
        article.setStatus(1);

        //评论开关判定
        if (article.getCommentSwitch()==null){
            article.setCommentSwitch(0);
        }


        articleMapper.insertArticle(article);

        return article.getId();
    }

    public int changeArticleAttr(Article article) {
       return articleMapper.updateArticleAttr(article);
    }


    public int delArticleById(Article article) {
        return articleMapper.deleteArticleById(article);
    }

    public Article loadArticleById(Integer id) {

        return articleMapper.selectArticleById(id);
    }
}
