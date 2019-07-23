package com.os7blue.blog7.controller.visitor;


import com.os7blue.blog7.entity.User;
import com.os7blue.blog7.model.ReturnModel;
import com.os7blue.blog7.model.ViewArticle;
import com.os7blue.blog7.service.ArticleService;
import com.os7blue.blog7.service.CommentService;
import com.os7blue.blog7.service.admin.AdminLoginService;
import com.os7blue.blog7.service.manager.LoadGuideInfoService;
import com.os7blue.blog7.util.UserStatus;
import lombok.var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;


/**
  * @Description:    访客相关页面和模板引擎的加载单独处理
  * @Author:         os7blue
  * @CreateDate:     19-6-17 上午2:03
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-17 上午2:03
  * @UpdateRemark:
  * @Version:        1.0
*/
@Controller
public class VisitorPageController {


    /**
     * 引导信息加载的一些逻辑
     */
    @Autowired
    private LoadGuideInfoService loadGuideInfoService;



    @Autowired
    private CommentService commentService;

    /**
     * 管理员登录的一些业务。
     */
    @Autowired
    private AdminLoginService adminLoginService;


    @Autowired
    private ArticleService articleService;

    /**
     * 直接注入request
     */
    @Autowired
    private HttpServletRequest request;

    /**
     * 前台主页的加载和模板内容的加载
     *
     * @return
     */
    @GetMapping(value = {"/", "/index"})
    public String gotoIndex(Map model) {

        var atList = articleService.getViewArticleListAccordingToConditions(0, null, null);
        model.put("atList", atList);

        loadGuideInfoService.loadIndexGuideInfo(model);

        return "index";
    }

    @GetMapping("/search")
    public String gotoSearch(String searchValue,Map model){

        List<ViewArticle> list = articleService.getViewArticleListAccordingToConditions(null, null, searchValue);
        model.put("searchList",list);
        model.put("searchValue",searchValue);
        return "search";
    }


    @GetMapping(value = "/article/{id}")
    public String gotoDetail(@PathVariable Integer id, Map model) {

        articleService.addOneViews(id);

        ViewArticle vat = articleService.getArticleDetailById(id);
        model.put("at", vat);

        var list = commentService.getArticleCommentList(id);
        model.put("atc",list);


        loadGuideInfoService.loadIndexGuideInfo(model);


        return "detail";
    }

    /**
     * 后台管理入口
     *
     * @return
     */
    @GetMapping(value = "/admin")
    public String gotoAdmin() {
        return "admin/index";
    }


    @GetMapping("/login")
    public String gotoLogin() {
        return "login";
    }

    @PostMapping("/loginCheck")
    @ResponseBody
    public ReturnModel loginCheck(User user) {

        var rm = new ReturnModel();

        User result = adminLoginService.getUserInfoByLoginInfo(user);

        //有对应的匹配结果
        if (result != null) {
            //将登录信息存入session中
            UserStatus.setUserState(request, user, UserStatus.USER_STATE_SET);
            rm.setCode(1);
            return rm;
        }
        rm.setCode(0);
        return rm;
    }


}
