package com.os7blue.blog7.aspect;


import com.os7blue.blog7.service.DataCacheService;
import lombok.var;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.util.Map;

import static com.os7blue.blog7.util.DataCache.getDataCache;

/**
 * 缓存更新aop
 */
@Aspect
@Component
public class DataCacheAspect {

    private final DataCacheService dataCacheService;

    public DataCacheAspect(DataCacheService dataCacheService) {
        this.dataCacheService = dataCacheService;
    }


    @Pointcut("execution(public * com.os7blue.blog7.controller.admin.ArticleController.create(..)) " +
            "|| execution(public * com.os7blue.blog7.controller.admin.ArticleController.delete(..))" +
            "|| execution(public * com.os7blue.blog7.controller.admin.ArticleController.edit(..)) " +
            "|| execution(public * com.os7blue.blog7.controller.admin.ArticleController.modify(..))")
    public void updateViewArticleCountDataCache() {
    }

    @Pointcut("execution(public * com.os7blue.blog7.controller.admin.CommentController.create(..))" +
            "|| execution(public * com.os7blue.blog7.controller.admin.CommentController.delete(..))")
    public void updateViewCommentCountDataCache() {
    }


    @Pointcut("execution(public * com.os7blue.blog7.controller.ViewPageController.*(..))")
    public void loadViewOption(){

    }




    @After("updateViewArticleCountDataCache()")
    public void doUpdateViewArticleCountDataCache(JoinPoint joinPoint){

        dataCacheService.update("viewArticleCount");
    }

    @After("updateViewCommentCountDataCache()")
    public void doUpdateViewCommentCountDataCache(JoinPoint joinPoint){

        dataCacheService.update("viewCommentCount");
    }

    @Before("loadViewOption()")
    public void doLoadViewOption(JoinPoint joinPoint){
        String methodName = joinPoint.getSignature().getName();
        Object[] params = joinPoint.getArgs();
        for (Object object:params) {
            if (object instanceof Map){

                var model = (Map<String,Object>) object;
                model.put("siteOption",getDataCache("siteOption"));
                model.put("viewArticleCount",getDataCache("viewArticleCount"));
                model.put("viewCommentCount",getDataCache("viewCommentCount"));

                switch (methodName){
                    case "gotoIndex":
                        model.put("isIndex",1);
                        break;
                    case "gotoArticle":
                        model.put("isArticle",1);
                        break;
                    case "gotoSort":
                        model.put("isSort",1);
                        break;
                    case "gotoTime":
                        model.put("isTime",1);
                        break;
                    case "gotoSearch":
                        model.put("isSearch",1);
                        break;
                    default:
                }


            }
        }

    }







}
