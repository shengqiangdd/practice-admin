package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarStateEntity;

import java.util.Map;

/**
 * 
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:37:11
 */
public interface TCarStateService extends IService<TCarStateEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

