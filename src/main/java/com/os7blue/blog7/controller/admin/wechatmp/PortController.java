package com.os7blue.blog7.controller.admin.wechatmp;


import com.os7blue.blog7.entity.WxConfig;
import com.os7blue.blog7.util.ConversionUtil;
import lombok.var;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/**
* @Description:    对接微信接口
* @Author:         os7blue
* @CreateDate:     2020/1/13 下午3:03
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/13 下午3:03
* @UpdateRemark:   
* @Version:        1.0
*/

@Controller
@RequestMapping(value = "/port")
public class PortController {

    private final WxConfig wxConfig;

    public PortController(WxConfig wxConfig) {
        this.wxConfig = wxConfig;
    }


    /**
     * 接口验证
     * @param signature 微信加密签名，signature结合了开发者填写的token参数和请求中的timestamp参数、nonce参数。
     * @param timestamp 时间戳
     * @param nonce 随机数
     * @param echostr 随机字符串
     * @return
     */
    @GetMapping()
    @ResponseBody
    public String port(String signature, String timestamp, String nonce, String echostr, HttpServletResponse response) throws IOException {

        //token、timestamp、nonce三个参数进行字典序排序
        var list = new ArrayList<String>();

        list.add(wxConfig.getToken());
        list.add(timestamp);
        list.add(nonce);

        Collections.sort(list);

        //将三个参数字符串拼接成一个字符串进行sha1加密
        String localSignature = ConversionUtil.toSha1(list.get(0)+list.get(1)+list.get(2));

        if (localSignature.equals(signature)){
//            BufferedOutputStream out = new BufferedOutputStream(
//                    response.getOutputStream());
//            out.write(echostr.getBytes());
//            out.flush();
//            out.close();
            return echostr;

        }

        return null;
    }

    /**
     * 接收用户发到公众号的消息
     * @param request
     */
    @PostMapping(produces = "text/xml;charset=UTF-8")
    public void port(HttpServletRequest request) throws IOException {



        ConversionUtil.wechatXmlToMap(request);
    }




}
