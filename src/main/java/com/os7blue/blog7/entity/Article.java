package com.os7blue.blog7.entity;

import lombok.Data;

/**
  * @Description:    文章实体
  * @Author:         os7blue
  * @CreateDate:     19-6-19 下午9:00
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-19 下午9:00
  * @UpdateRemark:   
  * @Version:        1.0
*/
@Data
public class Article {

    private Integer id;

    private String title;

    private String content;

    private long createTime;

    private long updateTime;

    private String mark;

    private String label;

    private Integer status;
}
