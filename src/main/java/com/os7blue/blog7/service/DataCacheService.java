package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.SiteOption;
import lombok.var;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

import java.util.stream.Collectors;

import static com.os7blue.blog7.util.DataCache.*;

@Service
public class DataCacheService {

    private final OptionService optionService;

    private final ArticleService articleService;

    private final CommentService commentService;

    public DataCacheService(OptionService optionService, ArticleService articleService, CommentService commentService) {
        this.optionService = optionService;
        this.articleService = articleService;
        this.commentService = commentService;
    }

    /**
     * 更新缓存信息
     * 站点启动时会加载一次
     * 进行相关操作会加载一次
     * 减少数据库操作
     */
    @PostConstruct
    public void cacheDataInit() {

        loadSiteMap();
        loadViewArticleCount();
        loadViewCommentCount();

    }

    /**
     * 更新单个缓存项目
     * @param key
     */
    public void update(String key){

        switch (key){
            case "siteOption":
                loadSiteMap();
                break;
            case "viewArticleCount":
                loadViewArticleCount();
                break;
            case "viewCommentCount":
                loadViewCommentCount();
                break;
            default:
                cacheDataInit();
        }

    }

    /**
     * 加载or更新站点信息至缓存
     */
    private void loadSiteMap(){
        var siteOptionList = optionService.getAllASiteOptionList();
        var siteMap = siteOptionList.stream().collect(Collectors.toMap(SiteOption::getName, SiteOption::getContent));
        updateDataCache("siteOption", siteMap);
    }

    /**
     * 加载or更新前台可见文章总数至缓存
     */
    private void loadViewArticleCount(){
        Integer articleCount = articleService.getViewArticleCount();
        updateDataCache("viewArticleCount",articleCount);
    }

    /**
     * 加载or更新前台可见评论总数至缓存
     */
    private void loadViewCommentCount(){

        Integer viewCommentCount = commentService.getViewCommentCount();
        updateDataCache("viewCommentCount",viewCommentCount);

    }
}
