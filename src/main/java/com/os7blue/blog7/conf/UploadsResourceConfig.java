package com.os7blue.blog7.conf;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.unit.DataSize;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.MultipartConfigElement;

/**
  * @Description:    图片上传配置
  * @Author:         os7blue
  * @CreateDate:     19-7-6 上午3:12
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-6 上午3:12
  * @UpdateRemark:
  * @Version:        1.0
*/
@Configuration
public class UploadsResourceConfig implements WebMvcConfigurer {


    @Value("${file.staticAccessPath}")
    private String staticAccessPath;
    @Value("${file.uploadFolder}")
    private String uploadFolder;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(staticAccessPath).addResourceLocations("file:" + uploadFolder);
    }

    @Bean
    MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        factory.setLocation(uploadFolder);
        //文件最大
        factory.setMaxFileSize(DataSize.ofMegabytes(10));
        // 设置总上传数据总大小
        factory.setMaxRequestSize(DataSize.ofMegabytes(11));
        return factory.createMultipartConfig();
    }
}
