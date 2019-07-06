package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.FileInfo;
import com.os7blue.blog7.mapper.provider.UploadProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;


/**
  * @Description:    文件上传的数据库操作
  * @Author:         os7blue
  * @CreateDate:     19-7-6 下午10:39
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-6 下午10:39
  * @UpdateRemark:
  * @Version:        1.0
*/
@Component
@Mapper
public interface AdminUploadMapper {


    @InsertProvider(type = UploadProvider.class,method = "insertOneFileInfo")
    Integer insertOneFileInfo(FileInfo fileInfo);
}
