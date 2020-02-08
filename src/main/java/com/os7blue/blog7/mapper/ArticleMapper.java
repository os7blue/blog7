package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.provider.ArticleProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface ArticleMapper {


    @SelectProvider(type = ArticleProvider.class,method = "selectArticleList")
    void selectArticleList(Article article, Integer page, Integer limit);

    @Insert("INSERT INTO b7_article(title,titleImg,content,createTime,updateTime,commentSwitch,parentId,status) VALUES(#{title},#{titleImg},#{content},#{createTime},#{updateTime},#{commentSwitch},#{parentId},#{status})")
    @Options(useGeneratedKeys = true,keyProperty ="id",keyColumn = "id")
    void insertArticle(Article article);
}
