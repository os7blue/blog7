package com.os7blue.blog7.mapper.provider;

import org.apache.ibatis.jdbc.SQL;

public class OptionProvider {

    public String updateOption(){
        return new SQL(){
            {


            }
        }.toString();
    }
}
