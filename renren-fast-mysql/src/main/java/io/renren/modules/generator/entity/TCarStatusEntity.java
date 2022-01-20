package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class TCarStatusEntity {

    public TCarStatusEntity() {
        this.setValue("空闲");
        this.setColor("green");
    }

    private Integer key;
    private String label;
    private String date;
    private String value;
    private String color;
    private String carnum;
    private Integer carid;
}
