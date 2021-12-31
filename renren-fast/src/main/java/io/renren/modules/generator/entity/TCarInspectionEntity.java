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
 * 年检记录
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Data
@TableName("t_car_inspection")
public class TCarInspectionEntity implements Serializable {
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
	 * 年检号
	 */
	private String number;
	/**
	 * 年检日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date njdate;
	/**
	 * 年检费用
	 */
	private BigDecimal njcost;
	/**
	 * 车管所
	 */
	private String adminoffice;
	/**
	 * 到期日期
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date expiredate;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 经手人
	 */
	private String transactor;

	/**
	 * 经手人
	 */
	private String carnum;

}
