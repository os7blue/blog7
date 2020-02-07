package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.UploadFileInfo;
import com.os7blue.blog7.mapper.UploadFileMapper;
import com.os7blue.blog7.util.BaseUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;

/**
* @Description:    文件上传处理
* @Author:         os7blue
* @CreateDate:     2020/2/7 下午10:43
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/7 下午10:43
* @UpdateRemark:
* @Version:        1.0
*/
@Service
public class UploadService {


    private final UploadFileMapper uploadFileMapper;

    public UploadService(UploadFileMapper uploadFileMapper) {
        this.uploadFileMapper = uploadFileMapper;
    }

    /**
     * 保存上传文件的根目录
     */
    @Value("${file.uploadFolder}")
    private String uploadFolderRootPath;


    public String singleFile(MultipartFile multipartFile) throws IOException {

        UploadFileInfo uploadFileInfo = new UploadFileInfo();

        //填充一下要保存到数据库的信息
        uploadFileInfo.setId(BaseUtils.getUUID());
        uploadFileInfo.setType(multipartFile.getOriginalFilename().split("\\.")[1]);
        uploadFileInfo.setSize(multipartFile.getSize());
        uploadFileInfo.setCreateTime(System.currentTimeMillis());

        //拼接出提供外部访问的url
        String fileUrl = getSaveDatePath()+File.separator+ uploadFileInfo.getId()+"."+ uploadFileInfo.getType();
        uploadFileInfo.setUrl("/uploads/"+fileUrl);

        //使用绝对路径保存文件
        multipartFile.transferTo(new File(uploadFolderRootPath+fileUrl));

        uploadFileMapper.insertUploadFileInfo(uploadFileInfo);


        return uploadFileInfo.getUrl();



    }

    public String multipleFile(MultipartFile[] titImg) {
        return null;
    }


    public String getSaveDatePath(){
        LocalDateTime now = LocalDateTime.now();
        String year = String.valueOf(now.getYear());
        String month = String.valueOf(now.getMonthValue());
        String day = String.valueOf(now.getDayOfMonth());

        String saveDatPath =year + File.separator + month + File.separator + day;
        File file = new File(uploadFolderRootPath+saveDatPath);
        if (!file.exists()){
            file.mkdirs();
        }

        return saveDatPath;
    }
}
