package io.renren.modules.generator.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarDeptDao;
import io.renren.modules.generator.entity.TCarDeptEntity;
import io.renren.modules.generator.service.TCarDeptService;


@Service("tCarDeptService")
public class TCarDeptServiceImpl extends ServiceImpl<TCarDeptDao, TCarDeptEntity> implements TCarDeptService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarDeptEntity> page = this.page(
                new Query<TCarDeptEntity>().getPage(params),
                new QueryWrapper<TCarDeptEntity>()
        );

        return new PageUtils(page);
    }

}