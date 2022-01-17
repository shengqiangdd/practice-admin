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
 * 保险记录
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Data
@TableName("t_car_Insurance")
@KeySequence(value = "T_CAR_INSURANCE_SEQ",clazz = Integer.class)
public class TCarInsuranceEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * ID
	 */
	@TableId(type = IdType.INPUT)
	private Integer id;

	/**
	 * 车辆ID
	 */
	private Long carid;
	/**
	 * 保单号
	 */
	@TableField(value = "\"number\"")
	private String number;
	/**
	 * 保险时间
	 */
	@TableField(jdbcType = JdbcType.DATE,update = "to_date(#{et.bxdate},'yyyy-mm-dd hh24:mi:ss')")
	private String bxdate;
	/**
	 * 保险种类
   1交强险
   2第三者责任险
	 */
	private Integer bxtype;
	/**
	 * 保险费用
	 */
	private BigDecimal cost;
	/**
	 * 保险金额
	 */
	private BigDecimal amount;
	/**
	 * 保险公司
	 */
	private String company;
	/**
	 * 经手人
	 */
	private String transactor;
	/**
	 * 到期时间
	 */
	@TableField(jdbcType = JdbcType.DATE,update = "to_date(#{et.expiredate},'yyyy-mm-dd hh24:mi:ss')")
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	private String expiredate;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 使用单位
	 */
	private String usecompany;
	/**
	 * 车型
	 */
	private String carmodel;

	/**
	 * 车号
	 */
	@TableField(exist = false,value = "carnum")
	private String carnum;

}
