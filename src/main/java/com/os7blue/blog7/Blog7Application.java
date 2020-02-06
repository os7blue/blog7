package com.os7blue.blog7;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;


@SpringBootApplication
@EnableAsync
@ComponentScan({"com.gitee.sunchenbin.mybatis.actable.manager.*","com.os7blue.blog7.*"})
@MapperScan("com.gitee.sunchenbin.mybatis.actable.dao.*")
public class Blog7Application {

    public static void main(String[] args) {
        SpringApplication.run(Blog7Application.class, args);
    }

}
