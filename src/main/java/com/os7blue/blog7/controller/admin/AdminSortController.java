package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.model.ReturnModel;
import com.os7blue.blog7.service.admin.AdminSortService;
import lombok.var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value = "/admin/sort")
public class AdminSortController {

    @Autowired
    private AdminSortService adminSortService;


    /**
     * 加载分类列表
     * @return
     */
    @PostMapping("/loadSortList")
    public ReturnModel loadSortList(){
        var rm = new ReturnModel();
        rm.setCode(0);

        var list = adminSortService.getSortList();
        rm.setData(list);

        return rm;

    }
}
