package com.os7blue.blog7.service.admin;

import com.os7blue.blog7.mapper.AdminSortMapper;
import com.os7blue.blog7.model.AdminSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminSortService {

    @Autowired
    private AdminSortMapper adminSortMapper;


    public List<AdminSort> getSortList() {

        return adminSortMapper.selectAllSort();

    }
}
