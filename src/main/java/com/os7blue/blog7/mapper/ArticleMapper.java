package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.entity.model.ViewArticle;
import com.os7blue.blog7.mapper.provider.ArticleProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @Description: 文章mapper
 * @Author: os7blue
 * @CreateDate: 2020/2/16 上午3:35
 * @UpdateUser: os7blue
 * @UpdateDate: 2020/2/16 上午3:35
 * @UpdateRemark:
 * @Version: 1.0
 */
@Mapper
@Component
public interface ArticleMapper {


    /**
     * 多条件分页获取文章列表
     *
     * @param article
     * @param page
     * @param limit
     * @return
     */
    @SelectProvider(type = ArticleProvider.class, method = "selectArticleList")
    List<ViewArticle> selectArticleList(@Param("article") Article article, Integer page, Integer limit);

    /**
     * 保存一篇文章并返回id
     *
     * @param article
     */
    @Insert("INSERT INTO b7_article(title,titleImg,content,createTime,updateTime,commentSwitch,parentId,status) VALUES(#{title},#{titleImg},#{content},#{createTime},#{updateTime},#{commentSwitch},#{parentId},#{status})")
    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    void insertArticle(Article article);

    /**
     * 获取文章总数
     *
     * @return
     */
    @Select("SELECT COUNT(*) FROM b7_article ")
    int selectArticleCount();

    /**
     * 更改某篇文章的某个属性
     *
     * @param article
     * @return
     */
    @UpdateProvider(type = ArticleProvider.class, method = "updateArticleAttr")
    int updateArticleAttr(Article article);

    /**
     * 根据id删除一篇文章
     *
     * @param article
     * @return
     */
    @Delete("DELETE FROM b7_article WHERE id = #{id}")
    int deleteArticleById(Article article);

    /**
     * 根据id获单一一篇文章内容
     *
     * @param id
     * @return
     */
    @Select("SELECT * FROM b7_article WHERE id = #{id}")
    Article selectArticleById(Integer id);

    /**
     * 文章编辑
     *
     * @param article
     * @return
     */
    @Update("UPDATE b7_article SET title=#{title},titleImg=#{titleImg},content=#{content},updateTime=#{updateTime},commentSwitch=#{commentSwitch},parentId=#{parentId},status=#{status} WHERE id = #{id}  ")
    int updateArticle(Article article);


    @SelectProvider(type = ArticleProvider.class, method = "selectViewArticleList")
    List<ViewArticle> selectViewArticleList(@Param("article") Article article, Integer page, Integer limit);

    @Select("SELECT COUNT(*) FROM b7_article WHERE status = 1")
    Integer selectViewArticleCount();

    @Update("UPDATE b7_article SET views = views + 1 WHERE id = #{id} AND status = 1")
    Integer updateArticleViews(Integer id);

    @SelectProvider(type = ArticleProvider.class, method = "selectViewArticleListCount")
    Integer selectViewArticleListCount(@Param("article") Article article);

    @Select("SELECT id,title,createTime,titleImg FROM b7_article WHERE status = 1 ORDER BY views DESC LIMIT 0,7")
    List<ViewArticle> selectTopViewArticleList();

    @Select("SELECT id,title,createTime,titleImg FROM b7_article WHERE status = 1 ORDER BY RAND() LIMIT 0,7")
    List<ViewArticle> selectRandViewArticleList();

    @Select("\n" +
            "select id,title from b7_article where " +
            "id in((select max(id) from b7_article where id< #{id}), " +
            "(select min(id) from b7_article where id> #{id}))")
    List<ViewArticle> selectArticleUpAndDownById(Integer id);
}
