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

/**
  * @Description:    文章mapper
  * @Author:         os7blue
  * @CreateDate:     19-7-18 上午3:09
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-18 上午3:09
  * @UpdateRemark:
  * @Version:        1.0
*/
@Component
@Mapper
public interface ArticleMapper {

    /**
     * 单篇文章详情
     * @param id
     * @return
     */
    @Select(value = "SELECT a.*,(SELECT COUNT(*) FROM b7_comment WHERE parentId = a.id ) AS commentTotal FROM b7_article a WHERE id = #{id}")
    ViewArticle selectOneArticleById(Integer id);

    /**
     * 动态查询文章列表
     * @param begin
     * @param parentId
     * @param searchValue
     * @return
     */
    @SelectProvider(type = ArticleProvider.class,method = "selectViewArticleListAccordingToConditions")
    List<ViewArticle> selectViewArticleListAccordingToConditions(Integer begin, Integer parentId, String searchValue);

    /**
     * 浏览次数+1
     * @param id
     */
    @Update(value = "UPDATE b7_article SET views = views+1 WHERE id = #{id}")
    void updateOneArticleViews(Integer id);
}
