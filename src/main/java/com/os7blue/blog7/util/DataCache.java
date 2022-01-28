package com.os7blue.blog7.util;

import org.springframework.stereotype.Component;

import java.util.HashMap;

/**
* @Description:    缓存工具类
* @Author:         os7blue
* @CreateDate:     2020/2/19 上午6:57
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/19 上午6:57
* @UpdateRemark:   
* @Version:        1.0
*/
@Component
public class DataCache {




    private static HashMap<String,Object> cacheData = new HashMap<>();



    /**
     * 获取缓存数据
     * @return
     */
    public synchronized static Object getDataCache(String key){


        return cacheData.get(key);
    }

    public synchronized static void updateDataCache(String key, Object object){

        cacheData.put(key,object);

    }





}
