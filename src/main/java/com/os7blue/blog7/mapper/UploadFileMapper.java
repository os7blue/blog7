package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.UploadFileInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

/**
* @Description:    上传文件信息mapper
* @Author:         os7blue
* @CreateDate:     2020/2/16 上午3:35
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/16 上午3:35
* @UpdateRemark:
* @Version:        1.0
*/
@Component
@Mapper
public interface UploadFileMapper {

    /**
     *插入单条上传文件信息
     * @param uploadFileInfo
     */
    @Insert(value = "INSERT INTO b7_uploadFileInfo(id,type,size,createTime,url) VALUE(#{id},#{type},#{size},#{createTime},#{url})")
    void insertUploadFileInfo(UploadFileInfo uploadFileInfo);


    /**
     * 插入多条上传文件信息
     * @param uploadFileInfoList
     */
    @Insert({
            "<script>",
            "INSERT INTO b7_uploadFileInfo(id,type,size,createTime,url) VALUES",
            "<foreach collection='uploadFileInfoList' item='item' index='index' separator=','>",
            "(#{item.id},#{item.type},#{item.size},#{item.createTime},#{item.url})",
            "</foreach>",
            "</script>"
    })
    void insertUploadFileInfos(@Param("uploadFileInfoList") ArrayList<UploadFileInfo> uploadFileInfoList);
}
