package com.os7blue.blog7.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;

/**
* @Description:    文章
* @Author:         os7blue
* @CreateDate:     2020/1/30 下午10:37
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/30 下午10:37
* @UpdateRemark:
* @Version:        1.0
*/
@Data
@Table(name = "b7_article")
public class Article {

    @Column(name = "id",type = MySqlTypeConstant.INT,isKey = true,isAutoIncrement = true)
    private Integer id;

    @Column(name = "title",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "文章标题")
    private String title;

    @Column(name = "titleImg",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "标题图路径")
    private String titleImg;

    @Column(name="content",type = MySqlTypeConstant.VARCHAR,isNull = false,comment = "文章内容")
    private String content;

    @Column(name = "createTime",type = MySqlTypeConstant.BIGINT,isNull = false,comment = "创建时间")
    private Long createTime;

    @Column(name = "updateTime",type = MySqlTypeConstant.BIGINT,isNull = false,comment = "更新时间")
    private Long updateTime;

    @Column(name = "commentSwitch",type = MySqlTypeConstant.INT,isNull = false,defaultValue = "1",comment = "评论开关，0代表关，1代表开，默认1")
    private Integer commentSwitch;

    @Column(name = "parentId",type = MySqlTypeConstant.INT,isNull = false,defaultValue = "0",comment = "父级id")
    private Integer parentId;

    @Column(name = "status",type = MySqlTypeConstant.INT,isNull = false,defaultValue = "1",comment = "文章状态，0为禁用，1为启用，默认1")
    private Integer status;

    @Column(name = "remark",type = MySqlTypeConstant.VARCHAR,comment = "备注")
    private String remark;

    @Column(name = "view",type = MySqlTypeConstant.VARCHAR,comment = "文章浏览次数")
    private Integer views;

    /**
     * 标签 暂不使用 第二版使用
     */
    @Column(name = "label",type = MySqlTypeConstant.VARCHAR,comment = "标签")
    private String label;
}
