package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Comment;
import com.os7blue.blog7.mapper.provider.CommentProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Component;

import java.util.List;

/**
* @Description:    评论mapper
* @Author:         os7blue
* @CreateDate:     2020/2/16 上午3:35
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/16 上午3:35
* @UpdateRemark:
* @Version:        1.0
*/
@Component
@Mapper
public interface CommentMapper {

    /**
     * 根据条件分页查询评论列表
     * @param comment
     * @param page
     * @param limit
     * @return
     */
    @SelectProvider(type = CommentProvider.class,method = "selectCommentList")
    List<Comment> selectCommentList(@Param("comment") Comment comment, Integer page, Integer limit);

    /**
     * 评论总条数
     * @return
     */
    @Select("SELECT COUNT(*) FROM b7_comment")
    int selectCommentCount();

    @Select("SELECT COUNT(*) FROM b7_comment WHERE status!=0 ")
    Integer selectViewCommentCount();
}
