package com.os7blue.blog7.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;

/**
  * @Description:    用户账号密码
  * @Author:         os7blue
  * @CreateDate:     19-6-19 下午11:41
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-19 下午11:41
  * @UpdateRemark:
  * @Version:
*/
@Data //lombok
@Table(name = "b7_user")
public class User {


    @Column(name = "nickName",type = MySqlTypeConstant.INT,isKey = true,isAutoIncrement = true)
    private String nickName;

    @Column(name = "passWord",type = MySqlTypeConstant.VARCHAR)
    private String passWord;

    @Column(name = "email",type = MySqlTypeConstant.VARCHAR)
    private String email;
}
