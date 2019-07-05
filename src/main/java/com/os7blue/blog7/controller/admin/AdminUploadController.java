package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.service.AdminUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
  * @Description:    对文件的一系列接口
  * @Author:         os7blue
  * @CreateDate:     19-7-6 上午3:13
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-6 上午3:13
  * @UpdateRemark:   
  * @Version:        1.0
*/
@RestController
@RequestMapping(value = "/admin/upload")
public class AdminUploadController {

    @Autowired
    private AdminUploadService adminUploadService;


    /**
     * 上传图片并返回上传成功后的访问URL
     * @param file
     */
    @PostMapping(value = "/afterUploadGetUrl")
    public void afterUploadGetUrl(MultipartFile file){

        adminUploadService.saveFileGetPath(file);
        System.out.println(file.getOriginalFilename());
    }


}
