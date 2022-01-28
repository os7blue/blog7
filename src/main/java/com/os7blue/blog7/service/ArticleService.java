package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.entity.model.ViewArticle;
import com.os7blue.blog7.mapper.ArticleMapper;
import org.springframework.stereotype.Service;

import javax.swing.text.View;
import java.util.List;


/**
* @Description:    文章业务逻辑
* @Author:         os7blue
* @CreateDate:     2020/2/16 上午3:36
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/16 上午3:36
* @UpdateRemark:
* @Version:        1.0
*/
@Service
public class ArticleService {

    private final ArticleMapper articleMapper;

    public ArticleService(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }



    public List<ViewArticle> getRandViewArticleList(){
        return articleMapper.selectRandViewArticleList();
    }


    public List<ViewArticle> getTopViewArticleList(){

        return articleMapper.selectTopViewArticleList();

    }

    public int getArticleCount(){
        return articleMapper.selectArticleCount();
    }



    /**
     * 同步加载前台文章列表总数
     * @param article
     * @param page
     * @param limit
     * @return
     */
    public Integer loadViewArticleListCount(Article article){




        return articleMapper.selectViewArticleListCount(article);
    }



    /**
     * 加载前台文章列表
     * @param article
     * @param page
     * @param limit
     * @return
     */
    public List<ViewArticle> loadViewArticleList(Article article, Integer page, Integer limit){


        page = (page-1)*limit;


        return articleMapper.selectViewArticleList(article,page,limit);
    }

    /**
     *  @param article
     * @param page
     * @param limit
     * @return
     */
    public List<ViewArticle> loadArticleList(Article article, Integer page, Integer limit) {

        page = (page-1)*limit;

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


    public int editArticleById(Article article) {

        //评论开关判定
        if (article.getCommentSwitch()==null){
            article.setCommentSwitch(0);
        }

        article.setUpdateTime(System.currentTimeMillis());

        return articleMapper.updateArticle(article);
    }


    public Article getArticleById(Integer id) {
       return articleMapper.selectArticleById(id);
    }

    public Integer getViewArticleCount() {
        return articleMapper.selectViewArticleCount();
    }

    public Integer addViews(Integer id) {
        return articleMapper.updateArticleViews(id);

    }

    public List<ViewArticle> getArticleUpAndDownById(Integer id) {
        return articleMapper.selectArticleUpAndDownById(id);
    }
}
