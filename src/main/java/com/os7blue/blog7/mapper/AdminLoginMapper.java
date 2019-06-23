package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;


/**
  * @Description:    管理员账号相关mapper
  * @Author:         os7blue
  * @CreateDate:     19-6-23 下午11:33
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-6-23 下午11:33
  * @UpdateRemark:   
  * @Version:        1.0
*/
@Mapper
@Component
public interface AdminLoginMapper {

    /**
     * 根据前台传来的登录信息查询数据库中匹配的用户信息
     * @param user
     * @return
     */
    @Select(value = "SELECT nickName,passWord FROM b7_user WHERE nickName = '${nickName}' AND passWord = '${passWord}'")
    User selectUserInfoByLoginInfo(User user);
}
