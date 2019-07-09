package com.os7blue.blog7.controller.visitor;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleService {

    @Autowired
    private ArticleMapper articleMapper;
    public Article getArticleDetailById(Integer id) {

        return articleMapper.selectOneArticleByid(id);
    }
}
