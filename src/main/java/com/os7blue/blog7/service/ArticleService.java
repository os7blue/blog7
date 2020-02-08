package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ArticleService {

    private final ArticleMapper articleMapper;

    public ArticleService(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }

    /**
     *
     * @param article
     * @param page
     * @param limit
     */
    public void loadArticleList(Article article, Integer page, Integer limit) {

        articleMapper.selectArticleList(article,page,limit);

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
}
