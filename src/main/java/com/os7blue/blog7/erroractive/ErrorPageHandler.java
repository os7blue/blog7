package com.os7blue.blog7.erroractive;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 页面错误处理
 * 前台异常跳转
 */
@Controller
@RequestMapping("error")
public class ErrorPageHandler implements ErrorController {

    public String getErrorPath() {
        return "errorPage";
    }

    /**
     * 处理get请求的异常
     * @param model
     * @param request
     * @return
     */
    @GetMapping
    public String error(Map<String,Object> model, HttpServletRequest request){

        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        model.put("errorCode",statusCode);

        return getErrorPath();

    }

    /**
     * 处理post请求的异常
     * @param model
     * @param request
     * @return
     */
    @PostMapping
    @ResponseBody
    public String errorPost(Map<String,Object> model, HttpServletRequest request){

        return "滚";

    }
}
