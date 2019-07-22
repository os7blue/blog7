package com.os7blue.blog7.service;

import com.os7blue.blog7.mapper.ArticleMapper;
import com.os7blue.blog7.model.ViewArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
  * @Description:    前台页面文章处理
  * @Author:         os7blue
  * @CreateDate:     19-7-19 下午10:46
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-19 下午10:46
  * @UpdateRemark:
  * @Version:        1.0
*/
@Service
public class ArticleService {

    @Autowired
    private ArticleMapper articleMapper;



    /**
     * 根据文章id获取详情
     * @param id
     * @return
     */
    public ViewArticle getArticleDetailById(Integer id) {

        return articleMapper.selectOneArticleById(id);
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
