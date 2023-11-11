package com.x.springbootinit.model.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * bi返回结果
 * @author:xiang
 * @date 2023/11/8 19:47
 */
@Data
public class BiResponse implements Serializable {

    private static final long serialVersionUID = 6921892773081287706L;

    private String genChart;

    private String genResult;

    private Long chartId;
}
