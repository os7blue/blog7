package com.os7blue.blog7.mapper.provider;

import com.os7blue.blog7.entity.FileInfo;
import org.apache.ibatis.jdbc.SQL;

/**
  * @Description:    关于上传文件管理的动态sql
  * @Author:         os7blue
  * @CreateDate:     19-7-7 上午1:47
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-7 上午1:47
  * @UpdateRemark:
  * @Version:        1.0
*/
public class UploadProvider {

    private final String TABLE_NAME = "b7_fileInfo";

    public  String insertOneFileInfo(FileInfo fileInfo){
        return new SQL(){
            {
                INSERT_INTO(TABLE_NAME);

                VALUES("url,createTime","#{url},#{createTime}");

                //暂时不需要
//                if (fileInfo.getParentId()!=null){
//                    VALUES("parentId","#{parentId}");
//                }


            }
        }.toString();
    }
}
