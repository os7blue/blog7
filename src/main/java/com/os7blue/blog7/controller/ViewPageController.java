package com.os7blue.blog7.controller;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.entity.ReturnModel;
import com.os7blue.blog7.entity.User;
import com.os7blue.blog7.service.ArticleService;
import lombok.var;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

import static com.os7blue.blog7.util.UserStatus.*;

/**
 * @Description: 前台页面模板
 * @Author: os7blue
 * @CreateDate: 2020/2/19 上午12:09
 * @UpdateUser: os7blue
 * @UpdateDate: 2020/2/19 上午12:09
 * @UpdateRemark:
 * @Version: 1.0
 */
@Controller
public class ViewPageController {

    private final ArticleService articleService;

    public ViewPageController(ArticleService articleService) {
        this.articleService = articleService;
    }


    @GetMapping("/search")
    public String gotoSearch(Map<String, Object> model, Article article, Integer pageNum) {

        if (pageNum == null) {
            pageNum = 1;
        }

        model.put("articleList", articleService.loadViewArticleList(article, pageNum, 7));
        model.put("articleListCount", articleService.loadViewArticleListCount(article));
        model.put("topViewArticleList", articleService.getTopViewArticleList());
        model.put("randViewArticleList", articleService.getRandViewArticleList());
        model.put("pageNum", pageNum);
        model.put("searchValue", article.getContent());

        return "search";


    }

    @GetMapping({"/time", "/time/page/{pageNum}"})
    public String gotoTime(@PathVariable(required = false) Integer pageNum, Map<String, Object> model) {

        if (pageNum == null) {
            pageNum = 1;
        }

        model.put("articleList", articleService.loadViewArticleList(null, pageNum, 7));
        model.put("articleListCount", articleService.loadViewArticleListCount(null));
        model.put("pageNum", pageNum);

        return "time";
    }


    @GetMapping({"/sort", "/sort/{id}", "/sort/{id}/page/{pageNum}"})
    public String gotoSort(@PathVariable(required = false) Integer id, Map<String, Object> model, @PathVariable(required = false) Integer pageNum) {
        if (id == null) {
            id = 0;
        }
        if (pageNum == null) {
            pageNum = 1;
        }
        Article article = new Article();
        article.setParentId(id);

        model.put("articleList", articleService.loadViewArticleList(article, pageNum, 7));
        model.put("articleListCount", articleService.loadViewArticleListCount(article));
        model.put("topViewArticleList", articleService.getTopViewArticleList());
        model.put("randViewArticleList", articleService.getRandViewArticleList());
        model.put("sortId",id);

        model.put("pageNum", pageNum);

        return "sort";
    }


    @PostMapping("/sign")
    @ResponseBody
    public ReturnModel sign(String name, String pwd, HttpServletRequest request) {
        var rm = new ReturnModel();
        rm.setCode(0);
        if (name.equals("1234") && pwd.equals("4321")) {
            User user = new User();
            user.setNickName(name);
            user.setPassWord(pwd);
            setUserState(request, user, USER_STATE_SET);
            rm.setCode(1);
        }
        return rm;
    }

    @GetMapping("/login")
    public String gotoLogin() {
        return "login";
    }

    @GetMapping({"/", "index", "/page/{pageNum}"})
    public String gotoIndex(Map<String, Object> model, @PathVariable(required = false) Integer pageNum) {

        if (pageNum == null) {
            pageNum = 1;
        }

        model.put("articleList", articleService.loadViewArticleList(null, pageNum, 7));
        model.put("articleListCount", articleService.loadViewArticleListCount(null));
        model.put("topViewArticleList", articleService.getTopViewArticleList());
        model.put("randViewArticleList", articleService.getRandViewArticleList());
        model.put("pageNum", pageNum);

        return "index";
    }


    @GetMapping("/article/{id}")
    public String gotoArticle(@PathVariable Integer id, Map<String, Object> model) {


        model.put("article", articleService.getArticleById(id));
        model.put("upAndDownArticle", articleService.getArticleUpAndDownById(id));
        model.put("topViewArticleList", articleService.getTopViewArticleList());
        model.put("randViewArticleList", articleService.getRandViewArticleList());
        articleService.addViews(id);

        return "info";
    }
}
