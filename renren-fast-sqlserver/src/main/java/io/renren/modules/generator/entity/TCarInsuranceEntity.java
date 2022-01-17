package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * 保险记录
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Data
@TableName("t_car_Insurance")
public class TCarInsuranceEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * ID
	 */
	@TableId(type = IdType.AUTO)
	private Long id;

	/**
	 * 车辆ID
	 */
	private Long carid;
	/**
	 * 保单号
	 */
	private String number;
	/**
	 * 保险时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date bxdate;
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
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date expiredate;
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
	private String carnum;

}
