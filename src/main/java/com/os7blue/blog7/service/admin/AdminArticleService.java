package com.os7blue.blog7.service.admin;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.AdminArticleMapper;
import com.os7blue.blog7.model.ViewArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
  * @Description:    文章管理业务逻辑
  * @Author:         os7blue
  * @CreateDate:     19-7-10 上午1:08
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-10 上午1:08
  * @UpdateRemark:
  * @Version:        1.0
*/
@Service
public class AdminArticleService {


    @Autowired
    private AdminArticleMapper adminArticleMapper;

    public Integer GetArticleIdAfterCreateArticle(Article article) {

        article.setCreateTime(System.currentTimeMillis());
        article.setUpdateTime(System.currentTimeMillis());
        article.setStatus(1);

        return adminArticleMapper.insertNewArticle(article);
    }

    public List<ViewArticle> getSomeViewArticleByType(Integer page, Integer limit,Article article) {

        return adminArticleMapper.selectSomeViewArticleListByType(page,limit,article);
    }

    public Integer getArticleCount() {
        return adminArticleMapper.selectArticleCount();
    }

    public int deleteOneArticleById(Integer id) {
        return adminArticleMapper.deleteArticle(id);
    }
}
