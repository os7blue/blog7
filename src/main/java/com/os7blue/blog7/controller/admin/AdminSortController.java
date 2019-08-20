package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.Sort;
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





    @PostMapping(value = "/delOne")
    public ReturnModel delOne(Integer id){
        var rm = new ReturnModel();
        rm.setCode(1);

        var rows = adminSortService.delOneSort(id);

        if (rows==0){
            rm.setCode(0);
        }
        return rm;

    }

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


    /**
     *
     * @return
     */
    @PostMapping("/addSort")
    public ReturnModel addSort(Sort sort){

        var rm = new ReturnModel();
        rm.setCode(0);

        Integer rows = adminSortService.addOneSort(sort);

        if (rows!=0){
            rm.setCode(1);
        }
        return rm;

    }
}
