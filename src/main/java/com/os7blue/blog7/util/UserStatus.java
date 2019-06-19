package com.os7blue.blog7.util;




import com.os7blue.blog7.entity.User;

import javax.servlet.http.HttpServletRequest;

/**
* @Description:    因为是个人博客，采用session+filter的方式做简单的用户权限验证
* @Author:         os7blue
* @CreateDate:     Create by 18-8-13 下午2:57
* @UpdateUser:     os7blue
* @UpdateDate:     Update by 18-8-13 下午2:57
* @UpdateRemark:   修改内容:无
* @Version:        1.0
*/
public class UserStatus {

    /**
     * session中所储存的用户信息标识
     */
    private static final String USER_STATE_NAME = "os7blue.blog7.admin.login.status";

    /**
     * 添加
     */
    public static final int USER_STATE_SET = 0;


    /**
     * 移除
     */
    public static final int USER_STATE_REMOVE = 1;


    /**
     * 保存/移除用户登录状态
     * @param request
     * @param user
     * @param activeCode
     */
    public static void setUserState(HttpServletRequest request, User user, int activeCode){
        switch (activeCode){
            case USER_STATE_SET:
                request.getSession().setAttribute(USER_STATE_NAME, user);
                break;

            case USER_STATE_REMOVE:
                request.getSession().removeAttribute(USER_STATE_NAME);
                break;

            default:
                break;
        }

    }

    /**
     * 验证session中储存的用户信息
     * @param request
     * @return
     */
    public static boolean checkState(HttpServletRequest request){
        if(null!=request.getSession().getAttribute(USER_STATE_NAME)){
            return true;
        }
        return false;


    }

    public static User getUserStatus(HttpServletRequest request){
        return (User) request.getSession().getAttribute(USER_STATE_NAME);

    }
}
