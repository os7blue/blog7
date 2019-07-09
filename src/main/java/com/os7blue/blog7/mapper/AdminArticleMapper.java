package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface AdminArticleMapper {

    @Insert(value = "INSERT INTO b7_article(" +
            "title," +
            "titleImg," +
            "content,"+
            "createTime,"+
            "updateTime,"+
            "status"+
            ")" +
            "VALUES(" +
            "'${title}'," +
            "'${titleImg}'," +
            "'${content}'," +
            "${createTime}," +
            "${updateTime}," +
            "${status});")
    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    Integer insertNewArticle(Article article);
}
