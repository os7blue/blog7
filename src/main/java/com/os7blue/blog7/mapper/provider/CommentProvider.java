package com.os7blue.blog7.mapper.provider;

import org.apache.ibatis.jdbc.SQL;

public class CommentProvider {

    /**
     * 评论管理动态查询
     * @param page
     * @param limit
     * @param searchType
     * @param searchValue
     * @return
     */
    public String selectCommentListByType(Integer page, Integer limit, Integer searchType, Integer searchValue){

        return new SQL(){
            {
                SELECT("*");
                FROM("b7_comment");


            }
        }.toString()+" ORDER BY createTime DESC LIMIT " + page + ","+limit;

    }
}
