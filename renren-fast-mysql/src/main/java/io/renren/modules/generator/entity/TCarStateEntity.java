package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * 
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:37:11
 */
@Data
public class TCarStateEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * ID
	 */
	private Long id;
	/**
	 * 车id
	 */
	private Long carid;
	/**
	 * 车牌号
	 */
	private String carnum;
	/**
	 * 开始时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date begintime;
	/**
	 * 结束时间
	 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date endtime;
	/**
	 * 状态
	 */
	private Integer status;
	/**
	 * 司机
	 */
	private String driver;
	/**
	 * 司机电话
	 */
	private String driverTel;
}
