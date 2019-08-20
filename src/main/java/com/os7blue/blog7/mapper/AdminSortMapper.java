package com.os7blue.blog7.mapper;

import com.os7blue.blog7.entity.Sort;
import com.os7blue.blog7.model.AdminSort;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface AdminSortMapper {

    @Select(value = "SELECT s.id,s.name,s.status, (SELECT COUNT(*) FROM  b7_article WHERE parentId = s.id) AS childNum FROM b7_sort s")
    List<AdminSort> selectAllSort();

    @Insert(value = "INSERT INTO b7_sort(name,status) VALUES(#{name},#{status})")
    Integer insertOneSort(Sort sort);


    @Delete(value = "DELETE FROM b7_sort WHERE id = #{id} AND (SELECT COUNT(*) FROM b7_article WHERE parentId = #{id}) = 0")
    Integer deleteOneSort(Integer id);
}
