package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.util.FileUploadUtil;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
  * @Description:    后台管理文章相关操作
  * @Author:         os7blue
  * @CreateDate:     19-6-25 下午3:45
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-25 下午3:45
  * @UpdateRemark:
  * @Version:        1.0
*/
@RestController("/article")
public class AdminArticleController {


    public String upLoad(@RequestParam("file") MultipartFile file){

        FileUploadUtil.fileUpload(file,"");

    }


}
