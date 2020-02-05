package com.os7blue.blog7.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.annotation.Unique;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;

import javax.print.attribute.standard.MediaSize;

/**
* @Description:    评论
* @Author:         os7blue
* @CreateDate:     2020/1/31 下午10:43
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/31 下午10:43
* @UpdateRemark:
* @Version:        1.0
*/
@Data
@Table(name = "b7_comment")
public class Comment {

    @Unique
    @Column(name = "id",type = MySqlTypeConstant.INT,isNull = false,isKey = true,isAutoIncrement = true)
    private Integer id;

    @Column(name = "parentId",type = MySqlTypeConstant.INT,isNull = false,defaultValue = "0",comment = "父级id")
    private Integer parentId;

    @Column(name = "content",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "评论内容")
    private String content;

    @Column(name = "url",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "评论所填写的url")
    private String url;

    @Column(name = "email",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "评论所填写邮件地址")
    private String email;

    @Column(name = "headers",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "评论请求到后台的header信息，用于扩展")
    private String headers;

    @Column(name = "status",type = MySqlTypeConstant.INT,isNull = false, defaultValue = "1",comment = "评论状态，0为禁用，1为启用，默认1")
    private Integer status;

    @Column(name = "remark",type = MySqlTypeConstant.VARCHAR,comment = "备注")
    private String remark;

    @Column(name = "emailSwitch" ,type = MySqlTypeConstant.INT,isNull = false,defaultValue = "1",comment = "邮件推送开关")
    private Integer emailSwitch;

    @Column(name = "createTime",type = MySqlTypeConstant.BIGINT,isNull = false,comment = "创建时间")
    private Long createTime;



}
