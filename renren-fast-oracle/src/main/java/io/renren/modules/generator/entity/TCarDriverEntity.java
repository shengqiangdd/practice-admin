package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 司机表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Data
@TableName("t_car_driver")
@KeySequence(value = "T_CAR_DRIVER_SEQ",clazz = Integer.class)
public class TCarDriverEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 司机ID
	 */
	@TableId(value = "id",type = IdType.INPUT)
	private Integer id;
	/**
	 * 车辆ID
	 */
	private String name;
	/**
	 * 1男
   2女
	 */
	private Integer sex;
	/**
	 * $column.comments
	 */
	private String tel;
	/**
	 * $column.comments
	 */
	@TableField(value = "\"type\"")
	private String type;
	/**
	 * $column.comments
	 */
	private String remark;

}
