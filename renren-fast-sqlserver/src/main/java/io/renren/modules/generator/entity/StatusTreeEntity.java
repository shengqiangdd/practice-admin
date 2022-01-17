package io.renren.modules.generator.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Data
public class StatusTreeEntity implements Serializable {
    private Integer id;
    List<Map<Integer,TCarStatusEntity>> children;
}
