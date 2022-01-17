package io.renren.modules.generator.entity;

import lombok.Data;

import java.util.Date;

@Data
public class TCarRunQueryVo {
    private String number;
    private String brand;
    private String model;
    private String type;
    private String company;
    private String usecompany;
    private Date buydate1;
    private Date buydate2;
}
