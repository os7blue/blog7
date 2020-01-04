package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.model.ReturnModel;
import com.os7blue.blog7.service.admin.AdminCommentService;
import lombok.var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
* @Description:    评论管理
* @Author:         os7blue
* @CreateDate:     2020/1/2 下午2:55
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/2 下午2:55
* @UpdateRemark:   
* @Version:        1.0
*/
@RestController
@RequestMapping(value = "/admin/comment")
public class AdminCommentController {

    @Autowired
    private AdminCommentService adminCommentService;


    /**
     *
     * 获取评论列表
     * @return
     */
    @PostMapping(value = "/load")
    public ReturnModel load(Integer page, Integer limit, Integer searchType, String searchValue){

        var rm = new ReturnModel();
        rm.setCode(0);

        var list = adminCommentService.getCommentList(page,limit,searchType,searchValue);
        rm.setData(list);

        return rm;

    }

}
