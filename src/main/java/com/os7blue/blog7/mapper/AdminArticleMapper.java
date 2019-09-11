package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Article;
import com.os7blue.blog7.model.ViewArticle;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
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

    @Select(value = "SELECT " +
            "a.*," +
            "(SELECT COUNT(*) FROM b7_comment WHERE parentId = a.id) AS commentTotal " +
            "FROM b7_article a " +
            "ORDER BY a.createTime DESC")
    List<ViewArticle> selectSomeViewArticleListByType();
}
