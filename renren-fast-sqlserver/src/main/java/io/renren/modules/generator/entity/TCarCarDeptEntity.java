package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 车辆档案部门
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:34:27
 */
@Data
@TableName("t_car_car_dept")
public class TCarCarDeptEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId
	private Long id;

	/**
	 * 使用单位ID
	 */
	@TableId
	private Long usecompany;
	/**
	 * 父ID
	 */
	private Long parentId;
	/**
	 * 单位名称
	 */
	private String deptName;
	/**
	 * 显示顺序
	 */
	private Integer ordernum;

}
