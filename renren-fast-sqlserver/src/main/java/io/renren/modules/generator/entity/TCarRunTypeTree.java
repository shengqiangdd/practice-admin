package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@AllArgsConstructor
@Data
public class TCarRunTypeTree {

    private Long id;

    private String label;

    private List<TCarRunTimeTree> children;
}
