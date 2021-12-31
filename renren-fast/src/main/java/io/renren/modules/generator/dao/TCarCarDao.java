package io.renren.modules.generator.dao;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.entity.TCarCarEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.generator.entity.TCarRunEntity;
import io.renren.modules.generator.entity.TCarStateEntity;
import io.renren.modules.generator.entity.TypeEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 车辆档案
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Mapper
@Repository
public interface TCarCarDao extends BaseMapper<TCarCarEntity> {
    Page<TCarCarEntity> selectTCarByCondition(Page<TCarCarEntity> page,
            @Param(Constants.WRAPPER) Wrapper<TCarCarEntity> queryWrapper);

    Page<TCarCarEntity> selectTCarAndRunByCondition(Page<TCarCarEntity> page,
            @Param(Constants.WRAPPER) Wrapper<TCarCarEntity> queryWrapper);

    List<Long> selectType();

    List<String> selectCompany();

    List<String> selectUseCompnay();

    List<TCarStateEntity> selectTCarStatus(@Param(Constants.WRAPPER)
            Wrapper<TCarStateEntity> queryWrapper);
}
