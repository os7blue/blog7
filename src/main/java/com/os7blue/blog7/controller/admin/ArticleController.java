package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.entity.ReturnModel;
import com.os7blue.blog7.service.ArticleService;
import lombok.var;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
* @Description:     文章管理
* @Author:         os7blue
* @CreateDate:     2020/2/7 下午4:02
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/7 下午4:02
* @UpdateRemark:
* @Version:        1.0
*/
@RestController
@RequestMapping("/admin/article")
public class ArticleController {

    private final ArticleService articleService;

    public ArticleController(ArticleService articleService) {
        this.articleService = articleService;
    }





    /**
     * 删除文章
     * @param article
     * @return
     */
    @PostMapping("/delete")
    public ReturnModel delete(Article article){

        var rm = new ReturnModel();
        rm.setCode(1);

        int row = articleService.delArticleById(article);;

        if (row==0){
            rm.setCode(0);
        }

        return rm;

    }

    /**
     * 修改文章中的某些属性 如评论开关等
     * @param article
     * @return
     */
    @PostMapping("/modify")
    public ReturnModel modify(Article article){

        var rm = new ReturnModel();
        rm.setCode(1);

        int row = articleService.changeArticleAttr(article);

        if (row==0){
            rm.setCode(0);
        }

        return rm;

    }

    /**
     *  @param article 搜索条件，可为空
     * @param page    第几页
     * @param limit   查几条
     * @return
     */
    @PostMapping("/load")
    public ReturnModel load(Article article, Integer page, Integer limit){

        var rm = new ReturnModel();
        rm.setCode(1);

        int count = articleService.getArticleCount();
        var list = articleService.loadArticleList(article,page,limit);

        rm.setCount(count);
        rm.setData(list);

        return rm;


    }

    @PostMapping("/create")
    public ReturnModel create(Article article){

        var rm = new ReturnModel();
        rm.setCode(1);

        int id = articleService.createArticle(article);
        rm.setData(id);

        return rm;


    }





}
