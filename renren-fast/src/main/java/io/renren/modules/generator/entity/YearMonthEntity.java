package io.renren.modules.generator.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class YearMonthEntity {
    private String year;
    private String month;

    private String yearMonth;
}
