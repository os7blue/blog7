package com.os7blue.blog7.service.admin;

import com.os7blue.blog7.entity.FileInfo;
import com.os7blue.blog7.mapper.AdminUploadMapper;
import com.os7blue.blog7.util.BaseUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;

/**
  * @Description:    文件上传管理,目前只满足图片上传,迟早要重构
  * @Author:         os7blue
  * @CreateDate:     19-7-6 上午3:02
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-6 上午3:02
  * @UpdateRemark:   
  * @Version:        1.0
*/
@Service
public class AdminUploadService {


    @Autowired
    private AdminUploadMapper adminUploadMapper;

    /**
     * 保存上传文件目录的真实路径
     * 映射url为: uoloads
     */
    @Value("${file.uploadFolder}")
    private String uploadFolderPath;


    /**
     * 根据当前年月日设置上传文件的保存位置并保存.
     * 上传成功后将处理过的图片信息保存到数据库并返回用于访问的url
     * @param file
     * @return
     */
    public String saveFileGetPath(MultipartFile file) {


        //获取当前年月日
        LocalDateTime now = LocalDateTime.now();
        String year = String.valueOf(now.getYear());
        String month = String.valueOf(now.getMonthValue());
        String day = String.valueOf(now.getDayOfMonth());

        //使用uuid给上传的文件命名
        //获取文件格式
        String fileName = file.getOriginalFilename();
        //拼接新的文件名
        String newName = BaseUtils.getUUID()+"."+fileName.split("\\.")[1];
        //拼接保存文件的相对路径
        String filePath = year + File.separator + month + File.separator + day+File.separator+newName;
        //拼接保存路径，以年月日作为分级目录
        File savePath = new File(uploadFolderPath+File.separator+filePath );
        //拼接文件访问url
        String fileUrl = "/uploads"+File.separator+filePath;

        //检查文件夹是否存在，不存在新建
        if (!savePath.getParentFile().exists()){
            savePath.getParentFile().mkdirs();
        }

        try {
            //将经过处理的文件保存到预设的文件夹
            file.transferTo(savePath);


        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }

        return fileUrl;



    }

    public Integer saveFileInfo(FileInfo fileInfo){

        return adminUploadMapper.insertOneFileInfo(fileInfo);

    }
}
