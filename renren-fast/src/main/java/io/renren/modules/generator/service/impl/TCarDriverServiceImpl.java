package io.renren.modules.generator.service.impl;

import com.alibaba.druid.util.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.entity.TCarCarEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarDriverDao;
import io.renren.modules.generator.entity.TCarDriverEntity;
import io.renren.modules.generator.service.TCarDriverService;


@Service("tCarDriverService")
public class TCarDriverServiceImpl extends ServiceImpl<TCarDriverDao, TCarDriverEntity> implements TCarDriverService {

    @Autowired
    private TCarDriverDao tCarDriverDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarDriverEntity> page = this.page(
                new Query<TCarDriverEntity>().getPage(params),
                new QueryWrapper<TCarDriverEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public Page<TCarDriverEntity> selectTCarByCondition(Map<String, Object> params) {
        Integer index = 1;
        Integer limit = 10;
        // 从前台获取到的起始页和条数
        if (params.get("page") != null && params.get("limit") != null) {
            index = Integer.valueOf(params.get("page").toString());
            limit = Integer.valueOf(params.get("limit").toString());
        }
        QueryWrapper queryWrapper = new QueryWrapper();
        if (params.get("cid") != null) {
            queryWrapper.eq("tcd.id",params.get("cid"));
        }
        // 构造分页参数
        Page<TCarDriverEntity> page = new Page<>(index,limit);
        // 封装where条件
        return this.baseMapper.selectTCarByCondition(page,queryWrapper);
    }
}