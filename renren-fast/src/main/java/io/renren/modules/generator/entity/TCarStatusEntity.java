package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TCarStatusEntity {
    private Integer key;
    private String label;
    private String date;
    private String value;
    private String color;
    private String carnum;
    private Integer carid;
}
