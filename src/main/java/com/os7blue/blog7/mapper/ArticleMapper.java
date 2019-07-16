package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.mapper.provider.ArticleProvider;
import com.os7blue.blog7.model.ViewArticle;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface ArticleMapper {

    @Select(value = "SELECT * FROM b7_article WHERE id = #{id}")
    Article selectOneArticleByid(Integer id);

    @SelectProvider(type = ArticleProvider.class,method = "selectViewArticleListAccordingToConditions")
    List<ViewArticle> selectViewArticleListAccordingToConditions(Integer begin, Integer parentId, String searchValue);

    @Update(value = "UPDATE b7_article SET views = views+1 WHERE id = #{id}")
    void updateOneArticleViews(Integer id);
}
