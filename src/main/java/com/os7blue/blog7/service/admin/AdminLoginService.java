package com.os7blue.blog7.service.admin;


import com.os7blue.blog7.entity.User;
import com.os7blue.blog7.mapper.AdminLoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 管理员账号相关
 */
@Service
public class AdminLoginService {


    /**
     * mapper
     */
    @Autowired
    private AdminLoginMapper adminLoginMapper;


    public User getUserInfoByLoginInfo(User user) {

        return adminLoginMapper.selectUserInfoByLoginInfo(user);
    }
}
