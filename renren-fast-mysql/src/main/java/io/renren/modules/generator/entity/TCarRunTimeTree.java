package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class TCarRunTimeTree {
    private Integer id;

    private String label;

    private String key;

    private List<Tree> children;
}
