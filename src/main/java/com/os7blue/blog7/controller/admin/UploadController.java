package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.ReturnModel;
import com.os7blue.blog7.service.UploadService;
import lombok.var;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
* @Description:    文件上传接口
* @Author:         os7blue
* @CreateDate:     2020/2/7 下午10:04
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/7 下午10:04
* @UpdateRemark:   
* @Version:        1.0
*/
@RestController
@RequestMapping("/admin/upload")
public class UploadController {

    private final UploadService uploadService;

    public UploadController(UploadService uploadService) {
        this.uploadService = uploadService;
    }

    /**
     * 提供唯一上传接口统一交给service处理
     * @param titImg
     * @return
     */
    @PostMapping()
    public ReturnModel upload(@RequestParam("file") MultipartFile[] titImg) throws IOException {

        var rm = new ReturnModel();
        rm.setCode(1);

        //单文件上传
        if (titImg.length<=1 ){
            String url = uploadService.singleFile(titImg[0]);
            rm.setData(url);
            return rm;
        }

        String urls = uploadService.multipleFile(titImg);
        rm.setCode(1);


        return rm;
    }


}
