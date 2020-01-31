package com.os7blue.blog7.entity;

import lombok.Data;

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
