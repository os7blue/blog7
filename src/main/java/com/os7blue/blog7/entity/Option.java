package com.os7blue.blog7.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;


/**
* @Description:    用于一些全局数据
* @Author:         os7blue
* @CreateDate:     2020/2/5 下午9:11
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/5 下午9:11
* @UpdateRemark:
* @Version:        1.0
*/
@Data
@Table(name = "b7_option")
public class Option {

    @Column(name = "key",type = MySqlTypeConstant.VARCHAR,comment = "设置项key")
    private String key;

    @Column(name="value",type = MySqlTypeConstant.VARCHAR,comment = "设置项value")
    private String value;
}
