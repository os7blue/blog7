package com.os7blue.blog7.entity;

import lombok.Data;

/**
  * @Description:    用户账号密码
  * @Author:         os7blue
  * @CreateDate:     19-6-19 下午11:41
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-19 下午11:41
  * @UpdateRemark:
  * @Version:        1.0
*/
@Data
public class User {

    private String nickName;

    private String passWord;

    private String email;
}
