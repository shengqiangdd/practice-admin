package io.renren.modules.generator.dao;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import io.renren.modules.generator.entity.TCarCarEntity;
import io.renren.modules.generator.entity.TCarInsuranceEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 保险记录
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Mapper
@Repository
public interface TCarInsuranceDao extends BaseMapper<TCarInsuranceEntity> {
    List<TCarInsuranceEntity> selectTCarByCondition(@Param(Constants.WRAPPER) Wrapper queryWrapper);
}
