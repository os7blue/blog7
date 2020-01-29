package com.os7blue.blog7.mapper.provider;

import com.os7blue.blog7.entity.Article;
import org.apache.ibatis.jdbc.SQL;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

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

    /**
     *
     * @param page
     * @param limit
     * @param
     * @param
     * @return
     */
    public String selectSomeViewArticleListByType(Integer page, Integer limit, Article article) throws ParseException {


        if (page > 0) {
            page = (page - 1) * limit;
        }

        return new SQL(){
            {
                SELECT("a.*,(SELECT COUNT(*) FROM b7_comment WHERE parentId = a.id) AS commentTotal");
                FROM("b7_article a");

                //确定搜索类型
//                if (searchType!=null&&searchType!=0&&searchValue!=null){
//
//                    switch (searchType){
//                        case 1:
//                            WHERE("a.title LIKE '%${searchValue}%'");
//                            break;
//                        case 2:
//                            WHERE("a.content LIKE '%${searchValue}%'");
//                            break;
//                        case 3:
//                            // 按创建日期搜索
//                            long time = new SimpleDateFormat("yyyy-MM-dd").parse(searchValue).getTime();
//                            WHERE("a.createTime>="+time);
//                            break;
//                        case 4:
//                            long time1 = new SimpleDateFormat("yyyy-MM-dd").parse(searchValue).getTime();
//                            WHERE("a.updateTime>="+time1);
//                            break;
//                        default:
//                    }
//
//
//
//                }

                ORDER_BY("a.createTime DESC");


            }
        }.toString()+" LIMIT " + page + ","+limit;
    }



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
                    WHERE("a.title LIKE '%${searchValue}%'");
                    OR();
                    WHERE("a.content LIKE '%${searchValue}%'");
                }

                ORDER_BY("a.createTime DESC");


            }
        }.toString(); //+" LIMIT " + begin * 12 +",12"
    }
}
