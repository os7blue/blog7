package com.os7blue.blog7.mapper.provider;

import com.os7blue.blog7.entity.Article;
import org.apache.ibatis.jdbc.SQL;

public class ArticleProvider {

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

            }
        }.toString();

    }
}
