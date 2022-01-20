package io.renren.modules.generator.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarStateDao;
import io.renren.modules.generator.entity.TCarStateEntity;
import io.renren.modules.generator.service.TCarStateService;


@Service("tCarStateService")
public class TCarStateServiceImpl extends ServiceImpl<TCarStateDao, TCarStateEntity> implements TCarStateService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarStateEntity> page = this.page(
                new Query<TCarStateEntity>().getPage(params),
                new QueryWrapper<TCarStateEntity>()
        );

        return new PageUtils(page);
    }

}