package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.Comment;
import com.os7blue.blog7.mapper.CommentMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description: 评论相关业务逻辑
 * @Author: os7blue
 * @CreateDate: 2020/2/16 上午3:34
 * @UpdateUser: os7blue
 * @UpdateDate: 2020/2/16 上午3:34
 * @UpdateRemark:
 * @Version: 1.0
 */
@Service
public class CommentService {

    private final CommentMapper commentMapper;

    public CommentService(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }


    public List<Comment> loadCommentList(Comment comment, Integer page, Integer limit) {

        page = (page - 1) * limit;

        return commentMapper.selectCommentList(comment, page, limit);
    }

    public int getCommentCount() {
        return commentMapper.selectCommentCount();
    }

    public Integer getViewCommentCount() {
        return commentMapper.selectViewCommentCount();
    }
}
