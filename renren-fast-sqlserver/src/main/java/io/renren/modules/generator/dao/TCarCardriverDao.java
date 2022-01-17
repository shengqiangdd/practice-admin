package io.renren.modules.generator.dao;

import io.renren.modules.generator.entity.TCarCardriverEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 车辆司机关联表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Mapper
public interface TCarCardriverDao extends BaseMapper<TCarCardriverEntity> {
	
}
