package com.os7blue.blog7.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.annotation.Unique;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;

/**
* @Description:    操作日志
* @Author:         os7blue
* @CreateDate:     2020/2/6 上午2:56
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/6 上午2:56
* @UpdateRemark:
* @Version:        1.0
*/
@Data
@Table(name="b7_log")
public class Log {


    @Column(name = "id",type = MySqlTypeConstant.INT,isKey = true,isAutoIncrement = true)
    private Integer id;

    @Column(name = "operate",type = MySqlTypeConstant.VARCHAR,isNull = false)
    private String operate;

    @Column(name = "createTime",type = MySqlTypeConstant.BIGINT,isNull = false,comment = "创建时间")
    private Long createTime;
}
