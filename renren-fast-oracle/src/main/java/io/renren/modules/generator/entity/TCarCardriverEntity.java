package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 车辆司机关联表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Data
@TableName("t_car_cardriver")
@KeySequence(value = "T_CAR_CARDRIVER_SEQ",clazz = Integer.class)
public class TCarCardriverEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId(value = "id",type = IdType.INPUT)
	private Integer id;

	/**
	 * 司机ID
	 */
	private Long driverid;
	/**
	 * 车辆ID
	 */
	private Long carid;

}
