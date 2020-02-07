package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.ArticleMapper;
import org.springframework.stereotype.Service;


@Service
public class ArticleService {

    private ArticleMapper articleMapper;

    /**
     *
     * @param article
     * @param page
     * @param limit
     */
    public void loadArticleList(Article article, Integer page, Integer limit) {

        articleMapper.selectArticleList(article,page,limit);

    }
}
