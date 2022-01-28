package com.os7blue.blog7.erroractive;

import com.os7blue.blog7.entity.ReturnModel;
import lombok.var;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * post接口异常的返回处理
 */
//@ControllerAdvice(annotations = RestController.class)
public class ControllerExceptHandler {

//    @ExceptionHandler(Exception.class)
//    @ResponseBody
    public ReturnModel handleException(HttpServletRequest request){
        var rm = new ReturnModel();
        rm.setCode(4);
        rm.setMag("发生了错误");
        return rm;
    }


}
