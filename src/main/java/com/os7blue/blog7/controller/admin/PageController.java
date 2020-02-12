package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;


/**
* @Description:    后台管理页面
* @Author:         os7blue
* @CreateDate:     2020/2/7 上午2:42
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/7 上午2:42
* @UpdateRemark:
* @Version:        1.0
*/
@Controller
@RequestMapping("/admin")
public class PageController {

    private final ArticleService articleService;

    public PageController(ArticleService articleService) {
        this.articleService = articleService;
    }


    @GetMapping("/article/edit/{id}")
    public String edit(@PathVariable Integer id, Map<String,Object> model){

        Article article = articleService.loadArticleById(id);
        model.put("article",article);

        return"admin/edit";
    }

    /**
     * index
     * @return
     */
    @GetMapping("")
    public String gotoIndex(){
        System.out.println(23);
        return "admin/index";
    }

    @GetMapping("/article")
    public String gotoArticle(){
        return "admin/article";
    }

    @GetMapping("/editor")
    public String gotoEditor(){
        return "admin/editor";
    }




}
