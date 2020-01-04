package com.os7blue.blog7.mapper.admin;

import com.os7blue.blog7.entity.Comment;
import com.os7blue.blog7.mapper.provider.ArticleProvider;
import com.os7blue.blog7.mapper.provider.CommentProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Component;

import java.util.List;

/**
* @Description:    评论管理mapper
* @Author:         os7blue
* @CreateDate:     2020/1/2 下午3:27
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/2 下午3:27
* @UpdateRemark:
* @Version:        1.0
*/
@Mapper
@Component
public interface AdminCommentMapper {

    /**
     * 获取comment列表
     * @param page
     * @param limit
     * @param searchType
     * @param searchValue
     * @return
     */
    @SelectProvider(type = CommentProvider.class,method = "selectCommentListByType")
    List<Comment> selectCommentListByType(Integer page, Integer limit, Integer searchType, String searchValue);
}
