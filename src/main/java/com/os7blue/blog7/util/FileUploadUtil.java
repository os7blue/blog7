package com.os7blue.blog7.util;


import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.io.IOException;

/**
  * @Description:    文件上传
  * @Author:         zsm
  * @CreateDate:     Create by 19-2-19 下午5:33
  * @UpdateUser:     zsm
  * @UpdateDate:     Update by 19-2-19 下午5:33
  * @UpdateRemark:   修改内容
  * @Version:        1.0
*/
public class FileUploadUtil {






    /**
     * 实现文件上传
     */
    public static String fileUpload(MultipartFile file,String path) {
        if (file.isEmpty()) {
            return "false";
        }
        System.out.println(path);
        String fileName = file.getOriginalFilename();
        String saveName = BaseUtils.getUUID()+"."+fileName.split("\\.")[1];
        File dest = new File(path+ "/" + saveName);
        //判断文件父目录是否存在
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdir();
        }
        try {
            //保存文件
            file.transferTo(dest);
            return saveName;
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "0";
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "0";
        }
    }
}
