package com.os7blue.blog7.mapper.provider;

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

    /**
     *
     * @param page
     * @param limit
     * @param searchType
     * @param searchValue
     * @return
     */
    public String selectSomeViewArticleListByType(Integer page,Integer limit,Integer searchType,String searchValue){


        if (page > 0) {
            page = (page - 1) * limit;
        }

        return new SQL(){
            {
                SELECT("a.*,(SELECT COUNT(*) FROM b7_comment WHERE parentId = a.id) AS commentTotal");
                FROM("b7_article a");

                //确定搜索类型
                if (searchType!=null&&searchType!=0){

                }



            }
        }.toString()+" ORDER BY a.createTime DESC LIMIT " + page + ","+limit;
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
