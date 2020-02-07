package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.service.ArticleService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
     *
     * @param article 搜索条件，可为空
     * @param page    第几页
     * @param limit   查几条
     */
    @PostMapping("/load")
    public void load(Article article,Integer page,Integer limit){

        articleService.loadArticleList(article,page,limit);



    }
}
