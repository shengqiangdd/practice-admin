package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarInspectionEntity;

import java.util.Map;

/**
 * 年检记录
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
public interface TCarInspectionService extends IService<TCarInspectionEntity> {

    PageUtils queryPage(Map<String, Object> params);

    PageUtils selectTCarByCondition(Map<String,Object> params);
}

