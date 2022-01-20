package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarCarEntity;
import io.renren.modules.generator.entity.TCarDriverEntity;

import java.util.Map;

/**
 * 司机表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
public interface TCarDriverService extends IService<TCarDriverEntity> {

    PageUtils queryPage(Map<String, Object> params);

    Page<TCarDriverEntity> selectTCarByCondition(Map<String,Object> params);
}

