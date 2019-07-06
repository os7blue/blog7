package com.os7blue.blog7.mapper.provider;

import com.os7blue.blog7.entity.FileInfo;
import org.apache.ibatis.jdbc.SQL;

public class UploadProvider {

    private final String TABLE_NAME = "b7_fileInfo";

    public  String insertOneFileInfo(FileInfo fileInfo){
        return new SQL(){
            {
                INSERT_INTO(TABLE_NAME);

                VALUES("url,createTime","#{url},#{createTime}");

                if (fileInfo.getParentId()!=null){
                    VALUES("parentId","#{parentId}");
                }


            }
        }.toString();
    }
}
