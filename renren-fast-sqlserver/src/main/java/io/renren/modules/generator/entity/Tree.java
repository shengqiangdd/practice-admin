package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class Tree {
    /**
     * 车号
     */
    private Integer id;
    /**
     * 名称
     */
    private String label;
    /**
     * 唯一键
     */
    private String key;

}
