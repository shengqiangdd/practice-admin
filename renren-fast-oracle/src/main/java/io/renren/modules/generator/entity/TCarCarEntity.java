package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.*;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.ibatis.type.JdbcType;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 车辆档案
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Data
@TableName("t_car_car")
@KeySequence(value = "T_CAR_CAR_SEQ",clazz = Integer.class)
public class TCarCarEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId(type = IdType.INPUT)
	private Integer id;
	/**
	 * 车牌
	 */
	@TableField(value = "\"number\"")
	private String number;
	/**
	 * 车辆品牌
	 */
	private String brand;
	/**
	 * 车型
	 */
	private String model;
	/**
	 * 车辆类型
   1小轿车
   2大客车
	 */
	@TableField(value = "\"type\"")
	private Integer type;
	/**
	 * 车辆颜色
	 */
	private String color;
	/**
	 * 载重(吨)
	 */
	@TableField(value = "\"load\"")
	private Integer load;
	/**
	 * 载客人数
	 */
	private Integer seating;
	/**
	 * 油耗(L/百公里)
	 */
	private BigDecimal fuelconsumption;
	/**
	 * 初始里程(公里)
	 */
	private BigDecimal initmileage;
	/**
	 * 保养里程(公里)
	 */
	private BigDecimal servicemileage;
	/**
	 * 保养周期
	 */
	private String servicecycle;
	/**
	 * 发动机号
	 */
	private String enginenumber;
	/**
	 * 车架号
	 */
	private String framenumber;
	/**
	 * 供应商
	 */
	@TableField(value = "\"vendor\"")
	private String vendor;
	/**
	 * 购入价格(元)
	 */
	private BigDecimal buyprice;
	/**
	 * 购置时间
	 */
	@TableField(jdbcType = JdbcType.DATE,update = "to_date(#{et.buydate},'yyyy-mm-dd hh24:mi:ss')")
	private String buydate;
	/**
	 * 注册单位
	 */
	private String company;
	/**
	 * 所属部门
	 */
	private Integer deptid;
	/**
	 * 部门
	 */
	private String deptidName;
	/**
	 * 使用单位
	 */
	private String usecompany;
	/**
	 * 使用部门
	 */
	private Integer usedept;
	/**
	 * 当前状态
	 */
	private Integer status;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 是否停用
	 */
	private Integer isstop;
	/**
	 * 保险
	 */
	@TableField(exist = false)
	private TCarInsuranceEntity insurance;
	/**
	 * 年检
	 */
	@TableField(exist = false)
	private TCarInspectionEntity inspection;

	/**
	 * 运行状态
	 */
	@TableField(exist = false)
	private TCarRunEntity tCarRun;

}
