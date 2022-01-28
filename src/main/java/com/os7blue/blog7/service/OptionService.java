package com.os7blue.blog7.service;

import com.os7blue.blog7.entity.SiteOption;
import com.os7blue.blog7.mapper.OpetionMapper;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.Map;


@Service
public class OptionService {

    private final OpetionMapper opetionMapper;

    public OptionService(OpetionMapper opetionMapper) {
        this.opetionMapper = opetionMapper;
    }

    public void changeOptionValue(Map<String, String> params) {

        opetionMapper.updateOption(params);
    }


    /**
     * 初始化设置表，添加默认值
     */
    @PostConstruct
    public void initOption() {
        System.out.println("正在初始化站点设置");

        if (opetionMapper.selectAllOption()==0){

            opetionMapper.initOption();
            System.out.println("完成初始化站点设置");
        }else {
            System.out.println("数据已存在，跳过初始化");
        }


    }

    public List<SiteOption> getAllASiteOptionList() {
        return opetionMapper.selectAllOptionList();
    }
}
