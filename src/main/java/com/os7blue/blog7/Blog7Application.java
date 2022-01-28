package com.os7blue.blog7;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;


@SpringBootApplication
@EnableAsync
/**
 * 使用actable插件实现mybatis自动建表，手动配置组件扫描，mapper扫描，后期自己造轮子。
 */
@ComponentScan({"com.gitee.sunchenbin.mybatis.actable.manager.*","com.os7blue.blog7.*"})
@MapperScan({"com.gitee.sunchenbin.mybatis.actable.dao.*","com.os7blue.blog7.*"})
@ServletComponentScan
public class Blog7Application {



    public static void main(String[] args) {
        SpringApplication.run(Blog7Application.class, args);




    }

}
