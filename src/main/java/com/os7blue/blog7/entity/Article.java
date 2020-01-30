package com.os7blue.blog7.entity;

import lombok.Data;

/**
* @Description:
* @Author:         os7blue
* @CreateDate:     2020/1/30 下午10:37
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/30 下午10:37
* @UpdateRemark:
* @Version:        1.0
*/
@Data
public class Article {

    private Integer id;

    private String title;

    private String titleImg;

    private String content;

    private Integer commentSwitch;

    private Integer parentId;
}
