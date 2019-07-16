package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.ArticleMapper;
import com.os7blue.blog7.model.ViewArticle;
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
     * 根据不同的条件获取相应的文章简介列表 如 分类列表 搜索列表
     * @return
     */
    public List<ViewArticle> getViewArticleListAccordingToConditions(Integer begin, Integer parentId, String searchValue) {

        return articleMapper.selectViewArticleListAccordingToConditions(begin,parentId,searchValue);
    }

    public void addOneViews(Integer id) {
        articleMapper.updateOneArticleViews(id);
    }
}
