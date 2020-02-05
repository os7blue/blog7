package com.os7blue.blog7.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.annotation.Unique;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;

/**
* @Description:    上传的文件
* @Author:         os7blue
* @CreateDate:     2020/2/5 下午9:13
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/5 下午9:13
* @UpdateRemark:
* @Version:        1.0
*/
@Data
@Table(name="b7_uploadFile")
public class UploadFile {

    @Unique
    @Column(name = "id",type = MySqlTypeConstant.INT,isNull = false,isKey = true,isAutoIncrement = true,comment ="文件名采用uuid")
    private String id;

    @Column(name = "type",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "文件类型")
    private String type;

    @Column(name = "size",type = MySqlTypeConstant.BIGINT,isNull = false,comment = "文件大小")
    private long size;

    @Column(name="createTime",type = MySqlTypeConstant.BIGINT,isNull = false,comment = "创建时间")
    private String createTime;

    @Column(name = "url",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "对外暴露资源url")
    private String url;

    @Column(name="status",type = MySqlTypeConstant.INT,isNull = false,defaultValue = "1",comment = "状态，0为禁用")
    private Integer status;

    @Column(name="remark",type = MySqlTypeConstant.VARCHAR,comment = "备注")
    private String remark;
}
