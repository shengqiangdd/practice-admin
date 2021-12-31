package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class TypeTree {
    /**
     * 名称
     */
    private String label;
    private Integer id;
    private List<Tree> children;
}
