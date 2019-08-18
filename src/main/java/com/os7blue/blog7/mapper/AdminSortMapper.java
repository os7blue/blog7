package com.os7blue.blog7.mapper;

import com.os7blue.blog7.model.AdminSort;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface AdminSortMapper {

    @Select("SELECT s.name,s.status, (SELECT COUNT(*) FROM  b7_article WHERE parentId = s.id) AS childNum FROM b7_sort s")
    List<AdminSort> selectAllSort();
}
