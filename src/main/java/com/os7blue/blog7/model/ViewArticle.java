package com.os7blue.blog7.model;

import com.os7blue.blog7.entity.Article;
import lombok.Data;

@Data
public class ViewArticle extends Article {

    private Integer commentTotal;

    private String parentName;

}
