package com.os7blue.blog7.entity.model;

import com.os7blue.blog7.entity.Article;
import lombok.Data;

/**
* @Description:    文章视图model
* @Author:         os7blue
* @CreateDate:     2020/2/16 上午3:37
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/16 上午3:37
* @UpdateRemark:
* @Version:        1.0
*/
@Data
public class ViewArticle extends Article {

    private Integer commentTotal;

}
