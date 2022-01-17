package io.renren.modules.generator.dao;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.entity.TCarCarEntity;
import io.renren.modules.generator.entity.TCarDriverEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 司机表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Mapper
@Repository
public interface TCarDriverDao extends BaseMapper<TCarDriverEntity> {
    Page<TCarDriverEntity> selectTCarByCondition(Page<TCarDriverEntity> page,
        @Param(Constants.WRAPPER) Wrapper<TCarDriverEntity> queryWrapper);
}
