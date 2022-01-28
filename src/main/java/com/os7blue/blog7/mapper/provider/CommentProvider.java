package com.os7blue.blog7.mapper.provider;

import com.os7blue.blog7.entity.Comment;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

/**
* @Description:    评论mapper动态sql
* @Author:         os7blue
* @CreateDate:     2020/2/16 上午3:36
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/16 上午3:36
* @UpdateRemark:
* @Version:        1.0
*/
public class CommentProvider {

    private String table = "b7_comment";


    public String selectCommentList(@Param("comment") Comment comment, Integer page, Integer limit){
        return new SQL(){
            {

                SELECT("*");
                FROM(table);

                if (comment.getContent()==null){
                    WHERE("content LIKE '${comment.content}'");
                }

                if (comment.getParentId()!=null){
                    WHERE("parentId = ${comment.parentId}");
                }

                if (comment.getCreateTime()!=null){
                    long nextDayTime = comment.getCreateTime()+86400000;
                    WHERE("createTime >= ${comment.createTime}");
                    AND();
                    WHERE("createTime <= " + nextDayTime);
                }

                ORDER_BY("createTime DESC");

                LIMIT("${page},${limit}");

            }
        }.toString();
    }
}
