package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarCardriverEntity;

import java.util.Map;

/**
 * 车辆司机关联表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
public interface TCarCardriverService extends IService<TCarCardriverEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

