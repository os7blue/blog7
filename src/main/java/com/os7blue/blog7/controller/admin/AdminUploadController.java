package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.FileInfo;
import com.os7blue.blog7.model.ReturnModel;
import com.os7blue.blog7.service.admin.AdminUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.time.ZoneOffset;

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
     * @return
     */
    @PostMapping(value = "/getUrlAfterUpload")
    public ReturnModel getUrlAfterUpload(MultipartFile file){

        ReturnModel rm = new ReturnModel();

        String fileUrl = adminUploadService.saveFileGetPath(file);

        if (fileUrl!=null&&!"".equals(fileUrl)){
            //保存成功后将文件信息保存到数据库.
            FileInfo fi = new FileInfo();
            fi.setUrl(fileUrl);
            fi.setCreateTime(LocalDateTime.now().toInstant(ZoneOffset.of("+8")).toEpochMilli());
            adminUploadService.saveFileInfo(fi);
            rm.setCode(1);
            rm.setData(fi);
            return rm;
        }

        rm.setCount(0);
        return rm;
    }


}
