package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.entity.model.ViewArticle;
import com.os7blue.blog7.mapper.provider.ArticleProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface ArticleMapper {


    @SelectProvider(type = ArticleProvider.class,method = "selectArticleList")
    List<ViewArticle> selectArticleList(Article article, Integer page, Integer limit);

    @Insert("INSERT INTO b7_article(title,titleImg,content,createTime,updateTime,commentSwitch,parentId,status) VALUES(#{title},#{titleImg},#{content},#{createTime},#{updateTime},#{commentSwitch},#{parentId},#{status})")
    @Options(useGeneratedKeys = true,keyProperty ="id",keyColumn = "id")
    void insertArticle(Article article);

    @Select("SELECT COUNT(*) FROM b7_article ")
    int selectArticleCount();

    @UpdateProvider(type = ArticleProvider.class,method = "updateArticleAttr")
    int updateArticleAttr(Article article);

    @Delete("DELETE FROM b7_article WHERE id = #{id}")
    int deleteArticleById(Article article);
}
