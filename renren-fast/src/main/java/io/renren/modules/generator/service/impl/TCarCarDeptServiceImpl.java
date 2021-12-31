package io.renren.modules.generator.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarCarDeptDao;
import io.renren.modules.generator.entity.TCarCarDeptEntity;
import io.renren.modules.generator.service.TCarCarDeptService;


@Service("tCarCarDeptService")
public class TCarCarDeptServiceImpl extends ServiceImpl<TCarCarDeptDao, TCarCarDeptEntity> implements TCarCarDeptService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarCarDeptEntity> page = this.page(
                new Query<TCarCarDeptEntity>().getPage(params),
                new QueryWrapper<TCarCarDeptEntity>()
        );

        return new PageUtils(page);
    }

}