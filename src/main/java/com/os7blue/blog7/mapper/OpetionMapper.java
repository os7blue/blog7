package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.SiteOption;
import com.os7blue.blog7.mapper.provider.OptionProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;


@Component
@Mapper
public interface OpetionMapper {
    @UpdateProvider(value = OptionProvider.class,method = "updateOption")
    void updateOption(Map<String, String> params);
    @Insert("INSERT INTO b7_siteOption " +
            "VALUES('siteTitle','blog7'),('siteSlogan','一款简约博客系统'),('siteAuthName','os7blue')")
    void initOption();

    @Select("SELECT COUNT(*) FROM b7_siteOption")
    int selectAllOption();

    @Select("SELECT * FROM b7_siteOption")
    List<SiteOption> selectAllOptionList();
}
