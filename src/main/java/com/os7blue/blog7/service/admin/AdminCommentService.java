package com.os7blue.blog7.service.admin;

import com.os7blue.blog7.entity.Comment;
import com.os7blue.blog7.mapper.admin.AdminCommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @Description:    评论管理service
* @Author:         os7blue
* @CreateDate:     2020/1/2 下午2:58
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/2 下午2:58
* @UpdateRemark:
* @Version:        1.0
*/
@Service
public class AdminCommentService {

    @Autowired
    private AdminCommentMapper adminCommentMapper;

    public List<Comment> getCommentList(Integer page, Integer limit, Integer searchType, String searchValue) {

        return adminCommentMapper.selectCommentListByType(page,limit,searchType,searchValue);



    }
}
