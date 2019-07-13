package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleService {

    @Autowired
    private ArticleMapper articleMapper;


    public Article getArticleDetailById(Integer id) {

        return articleMapper.selectOneArticleByid(id);
    }


    /**
     * 根据不同的条件获取相应的
     * @return
     */
    public List<Article> getArticleListAccordingToConditions() {

        return articleMapper.selectArticleListAccordingToConditions();
    }
}
