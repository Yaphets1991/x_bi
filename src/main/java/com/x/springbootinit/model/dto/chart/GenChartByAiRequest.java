package com.x.springbootinit.model.dto.chart;

import lombok.Data;

import java.io.Serializable;

/**
 * @author:xiang
 * @date 2023/11/7 14:30
 */
@Data
public class GenChartByAiRequest implements Serializable {

    private static final long serialVersionUID = -5112717423052966636L;

    /**
     * 图表名称
     */
    private String name;

    /**
     * 分析目标
     */
    private String goal;

    /**
     * 图表类型
     */
    private String charType;

}
