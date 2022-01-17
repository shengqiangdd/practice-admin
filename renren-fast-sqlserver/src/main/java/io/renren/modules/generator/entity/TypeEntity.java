package io.renren.modules.generator.entity;

import lombok.Data;

@Data
public class TypeEntity {

    /**
     * id
     */
    private Long id;
    /**
     * 注册单位
     */
    private String company;
    /**
     * 使用单位
     */
    private String usecompany;
    /**
     * 车辆类型
     */
    private Integer type;
}
