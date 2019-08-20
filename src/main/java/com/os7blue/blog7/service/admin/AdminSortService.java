package com.os7blue.blog7.service.admin;

import com.os7blue.blog7.entity.Sort;
import com.os7blue.blog7.mapper.AdminSortMapper;
import com.os7blue.blog7.model.AdminSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminSortService {

    @Autowired
    private AdminSortMapper adminSortMapper;


    /**
     * 获取分类列表
     * @return
     */
    public List<AdminSort> getSortList() {

        return adminSortMapper.selectAllSort();

    }

    /**
     * 添加一个分类条目
     * @param sort
     * @return
     */
    public Integer addOneSort(Sort sort) {
        int row = 1;
        //捕获unique异常 确保分类名称唯一
        try {
            adminSortMapper.insertOneSort(sort);
        }catch (Exception e){
            row=0;
        }
        return  row;
    }

    public Integer delOneSort(Integer id) {
       return adminSortMapper.deleteOneSort(id);
    }
}
