package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.model.ReturnModel;
import com.os7blue.blog7.service.admin.AdminArticleService;
import lombok.var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
  * @Description:    后台管理文章相关操作
  * @Author:         os7blue
  * @CreateDate:     19-6-25 下午3:45
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-25 下午3:45
  * @UpdateRemark:
  * @Version:        1.0
*/
@RestController
@RequestMapping(value = "/admin/article")
public class AdminArticleController {


    @Autowired
    private AdminArticleService adminArticleService;


//    public String upLoad(@RequestParam("file") MultipartFile file){
//        System.out.println(file);
//    }

    @PostMapping(value = "/createArticle")
    public ReturnModel createArticle(Article article){
        var rm = new ReturnModel();

        Integer status = adminArticleService.GetArticleIdAfterCreateArticle(article);

        if (status!=0){
            rm.setCode(1);
            rm.setData(article.getId());
            return rm;
        }
        rm.setCode(0);
        return rm;
    }


    /**
     * 加载文章管理列表
     * @return
     */
    @PostMapping(value = "/loadArticleList")
    public ReturnModel loadArticleList(){

        var rm =new ReturnModel();
        rm.setCode(0);

        var list = adminArticleService.getSomeViewArticleByType();
        rm.setData(list);
        rm.setCount(list.size());

        return rm;

    }


}
