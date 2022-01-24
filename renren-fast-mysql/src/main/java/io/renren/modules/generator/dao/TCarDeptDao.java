package io.renren.modules.generator.dao;

import io.renren.modules.generator.entity.TCarDeptEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 部门表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:37:11
 */
@Mapper
@Repository
public interface TCarDeptDao extends BaseMapper<TCarDeptEntity> {
	List<TCarDeptEntity> selectAllDept();

	List<TCarDeptEntity> selectAllUseCarPeople();
}
