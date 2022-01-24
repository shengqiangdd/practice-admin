package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarDeptEntity;

import java.util.List;
import java.util.Map;

/**
 * 部门表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:37:11
 */
public interface TCarDeptService extends IService<TCarDeptEntity> {

    PageUtils queryPage(Map<String, Object> params);

    List<TCarDeptEntity> selectAllDept();

    List<TCarDeptEntity> selectDeptAndChildren();

    List<TCarDeptEntity> selectAllUseCarPeople();
}

