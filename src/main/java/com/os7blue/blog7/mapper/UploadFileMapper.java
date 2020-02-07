package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.UploadFileInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface UploadFileMapper {

    @Insert(value = "INSERT INTO b7_uploadFileInfo(id,type,size,createTime,url) VALUE(#{id},#{type},#{size},#{createTime},#{url})")
    void insertUploadFileInfo(UploadFileInfo uploadFileInfo);
}
