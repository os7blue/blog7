package com.os7blue.blog7.controller.admin;

import com.os7blue.blog7.entity.Comment;
import com.os7blue.blog7.entity.ReturnModel;
import com.os7blue.blog7.service.CommentService;
import lombok.var;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
* @Description:    评论管理controller
* @Author:         os7blue
* @CreateDate:     2020/2/16 上午3:38
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/16 上午3:38
* @UpdateRemark:
* @Version:        1.0
*/
@RestController
@RequestMapping("/admin/comment")
public class CommentController {

    private final CommentService commentService;

    public CommentController(CommentService commentService) {
        this.commentService = commentService;
    }

    public ReturnModel create(Comment comment){
        return null;
    }

    public ReturnModel delete(Comment comment){
        return null;
    }




    @PostMapping("/load")
    public ReturnModel load(Comment comment, Integer page, Integer limit){

        var rm = new ReturnModel();
        rm.setCode(1);

        int count = commentService.getCommentCount();
        var list = commentService.loadCommentList(comment,page,limit);
        rm.setCount(count);
        rm.setData(list);

        return rm;
    }
}
