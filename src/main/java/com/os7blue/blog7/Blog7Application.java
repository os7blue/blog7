package com.os7blue.blog7;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;


/**
  * @Description:    启用filter注解 启用异步注解
  * @Author:         os7blue
  * @CreateDate:     19-6-19 下午9:40
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-19 下午9:40
  * @UpdateRemark:
  * @Version:        1.0
*/
@SpringBootApplication
@ServletComponentScan
@EnableAsync
@EnableWebSocket
public class Blog7Application {

    public static void main(String[] args) {
        SpringApplication.run(Blog7Application.class, args);
    }

}
