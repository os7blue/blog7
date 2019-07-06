package com.os7blue.blog7.entity;

import lombok.Data;

@Data
public class FileInfo {

    private Integer id;

    private String url;

    private Long createTime;

    private Integer parentId;
}
