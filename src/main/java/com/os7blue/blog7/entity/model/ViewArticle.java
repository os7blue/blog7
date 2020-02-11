package com.os7blue.blog7.entity.model;

import com.os7blue.blog7.entity.Article;
import lombok.Data;

@Data
public class ViewArticle extends Article {

    private Integer commentTotal;

}
