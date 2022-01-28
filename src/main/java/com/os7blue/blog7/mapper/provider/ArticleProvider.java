package com.os7blue.blog7.mapper.provider;

import com.os7blue.blog7.entity.Article;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

/**
 * @Description: 文章mapper动态sql
 * @Author: os7blue
 * @CreateDate: 2020/2/16 上午3:35
 * @UpdateUser: os7blue
 * @UpdateDate: 2020/2/16 上午3:35
 * @UpdateRemark:
 * @Version: 1.0
 */
public class ArticleProvider {

    public String selectViewArticleListCount(@Param("article") Article article) {

        return new SQL() {
            {
                SELECT("COUNT(*)");
                FROM("b7_article");

                if (article != null) {

                    if (article.getParentId() != null) {
                        WHERE("parentId = #{article.parentId}");
                    }

                    if (article.getContent() != null) {
                        WHERE("title LIKE '%${article.content}%' OR content LIKE '%${article.content}%'");
                    }

                }

                WHERE("status = 1");

            }

        }.toString();

    }


    public String selectViewArticleList(@Param("article") Article article, Integer page, Integer limit) {

        return new SQL() {
            {
                SELECT("id,titleImg,title,content,createTime,parentId,views,(SELECT COUNT(*) FROM b7_comment WHERE id = a.id) AS commentTotal");
                FROM("b7_article a");

                if (article != null) {

                    if (article.getParentId() != null) {
                        WHERE("a.parentId = #{article.parentId}");
                    }

                    if (article.getContent() != null) {
                        WHERE("title LIKE '%${article.content}%' OR content LIKE '%${article.content}%'");
                    }

                }

                WHERE("status = 1");

                ORDER_BY("createTime DESC");

                LIMIT("${page},${limit}");
            }

        }.toString();

    }


    public String updateArticleAttr(Article article) {
        return new SQL() {
            {
                UPDATE("b7_article");

                if (article.getStatus() != null) {
                    SET("status = #{status}");
                }

                if (article.getCommentSwitch() != null) {
                    SET("commentSwitch=#{commentSwitch}");
                }

                WHERE("id=#{id}");
            }
        }.toString();
    }

    /**
     * @param article
     * @param page
     * @param limit
     * @return
     */
    public String selectArticleList(@Param("article") Article article, Integer page, Integer limit) {

        return new SQL() {
            {
                SELECT("a.*");
                SELECT("(SELECT COUNT(*) FROM b7_comment WHERE parentId = a.id) AS commentTotal");
                FROM("b7_article a");

                if (article != null) {
                    if (article.getCreateTime() != null) {
                        long nextDayTime = article.getCreateTime() + 86400000;

                        WHERE("createTime >= ${article.createTime}");
                        AND();
                        WHERE("createTime <= " + nextDayTime);
                    }

                    if (article.getParentId() != null) {
                        WHERE("parentId = #{article.parentId}");
                    }

                    if (article.getContent() != null) {
                        WHERE("title LIKE '%${article.content}%'");
                        OR();
                        WHERE("content LIKE '%${article.content}%'");

                    }
                }

                ORDER_BY("createTime DESC");
                LIMIT("${page},${limit}");
            }
        }.toString();

    }
}
