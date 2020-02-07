package com.os7blue.blog7.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


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
