package io.renren.modules.generator.dao;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarCarEntity;
import io.renren.modules.generator.entity.TCarRunEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.generator.entity.YearMonthEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 出车记录
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@Mapper
@Repository
public interface TCarRunDao extends BaseMapper<TCarRunEntity> {
    Page<TCarRunEntity> selectTCarByCondition(Page<TCarRunEntity> page,
      @Param(Constants.WRAPPER) Wrapper<TCarRunEntity> queryWrapper);

    List<String> selectUseCompany();

    List<String> selectNumberByUseCompany(String number);

    List<YearMonthEntity> selectYearAndMonth();
}
