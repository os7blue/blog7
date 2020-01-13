package com.os7blue.blog7.entity;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Data
@Component
public class WxConfig {

    @Value("${wx.mp.appId}")
    private String appId;

    @Value("${wx.mp.secret}")
    private String secret;

    @Value("${wx.mp.token}")
    private String token;

    @Value("${wx.mp.aesKey}")
    private String aesKey;


}
