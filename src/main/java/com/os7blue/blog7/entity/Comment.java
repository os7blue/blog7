package com.os7blue.blog7.entity;

import lombok.Data;

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
public class Comment {

    private Integer id;

    private Integer parentId;

    private String content;

    private String url;

    private String email;

    private String headers;

    private Integer status;

    private String remark;

    private Integer emailSwitch;

    private Long createTime;



}
