package io.renren.modules.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.generator.entity.TCarDeptEntity;
import io.renren.modules.generator.entity.TCarRunTreeEntity;

import java.util.List;
import java.util.Map;


public interface TCarRunTreeService extends IService<TCarRunTreeEntity> {

    PageUtils queryPage(Map<String, Object> params);

    List<TCarRunTreeEntity> selectAllTree();

    List<TCarRunTreeEntity> selectDeptAndChildren();
}

