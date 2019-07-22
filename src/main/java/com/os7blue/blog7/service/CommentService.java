package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Comment;
import com.os7blue.blog7.mapper.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {
    @Autowired
    private CommentMapper commentMapper;


    public Integer addOneArticleByArticleId(Comment comment) {

        if (comment.getStatus()==null){
            comment.setStatus(1);
        }
        comment.setCreateTime(System.currentTimeMillis());
        comment.setHeader("test");

        return commentMapper.insertOneArticleComment(comment);

    }


    public List<Comment> getArticleCommentList(Integer id) {
        return commentMapper.selectArticleCommentList(id);

    }
}
