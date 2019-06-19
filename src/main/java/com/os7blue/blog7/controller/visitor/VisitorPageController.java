package com.os7blue.blog7.controller.visitor;


import com.os7blue.blog7.entity.User;
import com.os7blue.blog7.util.UserStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;


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


    @Autowired
    private HttpServletRequest request;

    /**
     * 前台主页的加载和模板内容的加载
     * @return
     */
    @GetMapping(value = {"/","/index"})
    public String gotoIndex(){
        return "index";
    }


    /**
     * 后台管理登录页面
     * @return
     */
    @GetMapping(value = "/admin")
    public String gotoLogin(){

        //如果已登录，重定向到后台管理面板
        if (UserStatus.checkState(request)){
            return "redirect:/admin/index";
        }
        return "login";
    }

    @PostMapping("/loginCheck")
    public String loginCheck(User user){
        return "";
    }


}
