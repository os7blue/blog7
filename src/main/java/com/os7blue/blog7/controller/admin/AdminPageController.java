package com.os7blue.blog7.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
  * @Description:    后台管理页面以及相关模板加载
  * @Author:         os7blue
  * @CreateDate:     19-6-17 上午2:08
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-17 上午2:08
  * @UpdateRemark:
  * @Version:        1.0
*/
@Controller
@RequestMapping("/admin")
public class AdminPageController {




    @GetMapping(value = "/sort")
    public String gotoAdminSort(){
        return "admin/adminSort";
    }
    /**
     * 新建文章页面
     * @return
     */
    @GetMapping(value = "/articleInfo/createArticle")
    public String gotoCreateArticle() {
        return "admin/articleInfo/createArticle";
    }

    @GetMapping(value = "/test")
    public String gotoTest() {
        return "admin/test";
    }

    /**
     * 文章管理页面
     * @return
     */
    @GetMapping(value = "/articleInfo/index")
    public String gotoArticleInfoIndex(){
        return "admin/articleInfo/index";
    }




}
