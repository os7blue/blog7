package com.os7blue.blog7.entity;

import lombok.Data;

/**
* @Description:    统一返回模型
* @Author:         os7blue
* @CreateDate:     2020/2/7 下午10:46
* @UpdateUser:     os7blue
* @UpdateDate:     2020/2/7 下午10:46
* @UpdateRemark:
* @Version:        1.0
*/
@Data
public class ReturnModel {

    private Integer code = 0;

    private String mag;

    private Integer count = 0;

    private Object data;
}
