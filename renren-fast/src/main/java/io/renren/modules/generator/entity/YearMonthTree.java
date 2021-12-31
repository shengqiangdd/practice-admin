package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class YearMonthTree{
    private String year;

    private List<String> month;

}
