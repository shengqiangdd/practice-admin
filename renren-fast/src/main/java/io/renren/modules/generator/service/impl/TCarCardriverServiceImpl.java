package io.renren.modules.generator.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarCardriverDao;
import io.renren.modules.generator.entity.TCarCardriverEntity;
import io.renren.modules.generator.service.TCarCardriverService;


@Service("tCarCardriverService")
public class TCarCardriverServiceImpl extends ServiceImpl<TCarCardriverDao, TCarCardriverEntity> implements TCarCardriverService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarCardriverEntity> page = this.page(
                new Query<TCarCardriverEntity>().getPage(params),
                new QueryWrapper<TCarCardriverEntity>()
        );

        return new PageUtils(page);
    }

}