package com.os7blue.blog7.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PageController {


    /**
     * 跳转页面
     * @param page
     * @return
     */
    @RequestMapping(value = "/{page}")
    public String gotoPage(@PathVariable("page") String page){

        //加载header



        return page;
    }
}

