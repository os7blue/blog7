package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface ArticleMapper {

    @Select(value = "SELECT * FROM b7_article WHERE id = #{id}")
    Article selectOneArticleByid(Integer id);

    @Select(value = "SELECT * FROM b7_article")
    List<Article> selectArticleListAccordingToConditions();
}
