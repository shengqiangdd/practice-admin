package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarCarEntity;
import io.renren.modules.generator.entity.TCarRunEntity;
import io.renren.modules.generator.entity.TCarRunTypeTree;
import io.renren.modules.generator.entity.TypeTree;

import java.util.List;
import java.util.Map;

/**
 * 出车记录
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
public interface TCarRunService extends IService<TCarRunEntity> {

    PageUtils queryPage(Map<String, Object> params);

    Page<TCarRunEntity> selectTCarByCondition(TCarRunEntity tCarRun, Map<String,Object> params);

    List<TCarRunTypeTree> selectTypeTree();
}

