package com.os7blue.blog7.controller.visitor;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


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
     * 前台主页的加载和模板内容的加载
     * @return
     */
    @GetMapping(value = {"/","/index"})
    public String gotoIndex(){
        return "index";
    }


}
