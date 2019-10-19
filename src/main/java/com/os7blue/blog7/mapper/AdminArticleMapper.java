package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.provider.ArticleProvider;
import com.os7blue.blog7.model.ViewArticle;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

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
            "#{title}," +
            "#{titleImg}," +
            "#{content}," +
            "#{createTime}," +
            "#{updateTime}," +
            "#{status});")
    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    Integer insertNewArticle(Article article);

    @SelectProvider(type = ArticleProvider.class,method = "selectSomeViewArticleListByType")
    List<ViewArticle> selectSomeViewArticleListByType(Integer page, Integer limit, Integer searchType, String searchValue);

    @Select(value = "SELECT COUNT(*) FROM b7_article")
    Integer selectArticleCount();
}
