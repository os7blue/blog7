package com.os7blue.blog7.model;

import com.os7blue.blog7.entity.Sort;
import lombok.Data;

@Data
public class AdminSort extends Sort {

    private  Integer childNum;
}
