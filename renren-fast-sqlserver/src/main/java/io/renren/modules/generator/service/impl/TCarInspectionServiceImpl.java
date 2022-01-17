package io.renren.modules.generator.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.dao.TCarDriverDao;
import io.renren.modules.generator.entity.TCarDriverEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarInspectionDao;
import io.renren.modules.generator.entity.TCarInspectionEntity;
import io.renren.modules.generator.service.TCarInspectionService;


@Service("tCarInspectionService")
public class TCarInspectionServiceImpl extends ServiceImpl<TCarInspectionDao, TCarInspectionEntity> implements TCarInspectionService {

    @Autowired
    private TCarInspectionDao tCarInspectionDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarInspectionEntity> page = this.page(
                new Query<TCarInspectionEntity>().getPage(params),
                new QueryWrapper<TCarInspectionEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public PageUtils selectTCarByCondition(Map<String, Object> params) {
        // 从前台获取到的起始页和条数
        Integer index = Integer.valueOf(params.get("page").toString());
        Integer limit = Integer.valueOf(params.get("limit").toString());
        QueryWrapper queryWrapper = new QueryWrapper();
        if (params.get("cid") != null) {
            queryWrapper.eq("tcc.id",params.get("cid"));
        }
        List<TCarInspectionEntity> tCarInspectionEntities = tCarInspectionDao.selectTCarByCondition(queryWrapper);
        // 创建分页对象，开始分页
        Page<TCarInspectionEntity> page = new Page<>(index,limit);
        // 给分页对象赋查到的列表值
        page.setRecords(tCarInspectionEntities);
        page.setTotal(tCarInspectionEntities.size());
        return new PageUtils(page);
    }

}