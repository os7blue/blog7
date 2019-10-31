package com.os7blue.blog7.controller.admin.wechatmp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/mp")
public class MpToken {

    /**
     * 接收微信公众平台传过来的验证数据
     * @param signature 签名
     * @param timestamp 时间戳
     * @param nonce     随机字符
     * @param echostr   验证字符
     * @return
     */
    @GetMapping("/")
    public String checkMpToken(@RequestParam(value = "signature") String signature,
                               @RequestParam(value = "timestamp") String timestamp,
                               @RequestParam(value = "nonce") String nonce,
                               @RequestParam(value = "echostr") String echostr){

        return null;
    }


}
