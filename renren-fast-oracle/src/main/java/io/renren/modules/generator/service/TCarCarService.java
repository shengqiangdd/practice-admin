package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.modules.generator.entity.*;

import java.util.List;
import java.util.Map;

/**
 * 车辆档案
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
public interface TCarCarService extends IService<TCarCarEntity> {

    PageUtils queryPage(Map<String, Object> params);

    Page<TCarCarEntity> selectTCarByCondition(TCarCarEntity tCarCar, Map<String,Object> params);

    Page<TCarCarEntity> selectTCarAndRunByCondition(TCarCarEntity tCarCar,Map<String,Object> params);

    List<TypeTree> selectTypeTree();

    R selectTCarStatus(Map<String,Object> map);

    Integer addDriverByCarId(Map<String,Object> map);
}

