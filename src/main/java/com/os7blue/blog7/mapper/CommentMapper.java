package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface CommentMapper {

    @Insert(value = "INSERT INTO " +
            "b7_comment(" +
            "nickName," +
            "content," +
            "header," +
            "createTime," +
            "status," +
            "email," +
            "parentId," +
            "url) " +
            "VALUES(" +
            "#{nickName}," +
            "#{content}," +
            "#{header}," +
            "#{createTime}," +
            "#{status}," +
            "#{email}," +
            "#{parentId}," +
            "#{url}) ")
    Integer insertOneArticleComment(Comment comment);

    @Select(value = "SELECT * FROM b7_comment WHERE parentId = #{id}")
    List<Comment> selectArticleCommentList(Integer id);
}
