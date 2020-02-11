package com.os7blue.blog7.mapper.provider;

import com.os7blue.blog7.entity.Article;
import org.apache.ibatis.jdbc.SQL;

public class ArticleProvider {



    public String updateArticleAttr(Article article){
        return new SQL(){
            {
                UPDATE("b7_article");

                if (article.getStatus()!=null){
                    SET("status = #{status}");
                }

                if (article.getCommentSwitch()!=null){
                    SET("commentSwitch=#{commentSwitch}");
                }

                WHERE("id=#{id}");
            }
        }.toString();
    }

    /**
     *
     * @param article
     * @param page
     * @param limit
     * @return
     */
    public String selectArticleList(Article article, Integer page, Integer limit){

        return new SQL(){
            {
                SELECT("*");
                SELECT("(SELECT COUNT(*) FROM b7_comment WHERE parentId = a.id) AS commentTotal");
                FROM("b7_article a");
                ORDER_BY("createTime DESC");
                LIMIT("#{page},#{limit}");
            }
        }.toString();

    }
}
