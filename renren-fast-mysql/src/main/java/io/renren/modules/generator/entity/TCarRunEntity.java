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
 * 出车记录
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Data
@TableName("t_car_run")
public class TCarRunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId
	private Integer id;
	/**
	 * 车号
	 */
	private Long carid;
	/**
	 * 用车人
	 */
	private Long userid;
	/**
	 * 姓名
	 */
	private String username;
	/**
	 * 申请单号
	 */
	private String number;
	/**
	 * 开始时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date begintime;
	/**
	 * 预计回车时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date planreturntime;
	/**
	 * 结束时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date endtime;
	/**
	 * 用车人单位
	 */
	private Integer deptid;
	/**
	 * 部门
	 */
	private String deptname;
	/**
	 * 随行人员
	 */
	private String party;
	/**
	 * 司机
	 */
	private String driver;
	/**
	 * 司机电话
	 */
	private String drivertel;
	/**
	 * 起始地
	 */
	private String beginplace;
	/**
	 * 目的地
	 */
	private String endplace;
	/**
	 * 用车事由
	 */
	private String reason;
	/**
	 * 开始里程
	 */
	private BigDecimal beginnumber;
	/**
	 * 结束里程
	 */
	private BigDecimal endnumber;
	/**
	 * 行驶里程
	 */
	private BigDecimal mileage;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 类型(1、普通类型2、借出类型)
	 */
	@TableField(value = "`type`")
	private Integer type;
	/**
	 * 状态
	 */
	private Integer status;

	/**
	 * 车号
	 */
	@TableField(exist = false)
	private String tCarNum;
}
