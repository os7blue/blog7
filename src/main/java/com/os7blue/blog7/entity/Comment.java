package com.os7blue.blog7.entity;

import lombok.Data;


/**
  * @Description:    文章评论
  * @Author:         os7blue
  * @CreateDate:     19-6-19 下午9:32
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-19 下午9:32
  * @UpdateRemark:
  * @Version:        1.0
*/
@Data
public class Comment {

    private Integer id;

    private String email;

    private String url;

    private String nickName;

    private String content;

    private String header;

    private long createTime;

    private Integer status;

    private Integer parentId;




}
