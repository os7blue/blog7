package com.os7blue.blog7.controller.visitor;

import com.os7blue.blog7.entity.Comment;
import com.os7blue.blog7.model.ReturnModel;
import com.os7blue.blog7.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @PostMapping(value = "/addOneArticleComment")
    public ReturnModel addOneArticleComment(Comment comment){

        ReturnModel rm = new ReturnModel();

        Integer row = commentService.addOneArticleByArticleId(comment);
        if (row!=0){
            rm.setCode(1);
            return rm;
        }
        rm.setCode(0);
        return rm;
    }

}
