package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 部门表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:37:11
 */
@Data
@TableName("t_car_dept")
public class TCarDeptEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	@TableId
	private Long id;

	/**
	 * 部门id
	 */
	@TableId
	private Long deptid;
	/**
	 * 父部门id
	 */
	private Long parentId;
	/**
	 * 部门名称
	 */
	private String deptName;
	/**
	 * 显示顺序
	 */
	private Integer ordernum;

}
