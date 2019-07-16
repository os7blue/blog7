package com.os7blue.blog7.mapper.provider;

import com.alibaba.druid.sql.visitor.functions.If;
import com.os7blue.blog7.statusenum.ArticleEnum;
import org.apache.ibatis.jdbc.SQL;

/**
  * @Description:    前台页面获取文章列表的动态sql
  * @Author:         os7blue
  * @CreateDate:     19-7-15 上午12:17
  * @UpdateUser:     os7blue
  * @UpdateDate:     19-7-15 上午12:17
  * @UpdateRemark:
  * @Version:        1.0
*/
public class ArticleProvider {



    public String selectViewArticleListAccordingToConditions(Integer begin,Integer parentId,String searchValue){
        return new SQL(){
            {
                SELECT("a.*");
                SELECT("(SELECT COUNT(*) FROM b7_comment WHERE parentId = a.id) AS commentTotal");
                FROM("b7_article a");

                if (parentId!=null){
                    WHERE("a.parentId = #{parentId}");
                }

                if (searchValue!=null){
                    WHERE("a.title LIKE %#{searchValue}%");
                    WHERE("a.content LIKE %#{searchValue}%");
                }


            }
        }.toString(); //+" LIMIT " + begin * 12 +",12"
    }
}
