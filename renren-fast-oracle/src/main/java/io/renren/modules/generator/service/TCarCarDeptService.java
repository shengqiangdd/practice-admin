package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarCarDeptEntity;

import java.util.Map;

/**
 * 车辆档案部门
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:34:27
 */
public interface TCarCarDeptService extends IService<TCarCarDeptEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

