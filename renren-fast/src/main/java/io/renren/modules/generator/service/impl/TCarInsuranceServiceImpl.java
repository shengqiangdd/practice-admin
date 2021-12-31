package io.renren.modules.generator.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.dao.TCarInspectionDao;
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

import io.renren.modules.generator.dao.TCarInsuranceDao;
import io.renren.modules.generator.entity.TCarInsuranceEntity;
import io.renren.modules.generator.service.TCarInsuranceService;


@Service("tCarInsuranceService")
public class TCarInsuranceServiceImpl extends ServiceImpl<TCarInsuranceDao, TCarInsuranceEntity> implements TCarInsuranceService {

    @Autowired
    private TCarInsuranceDao tCarInsuranceDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarInsuranceEntity> page = this.page(
                new Query<TCarInsuranceEntity>().getPage(params),
                new QueryWrapper<TCarInsuranceEntity>()
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
        List<TCarInsuranceEntity> tCarInsuranceEntities = tCarInsuranceDao.selectTCarByCondition(queryWrapper);
        // 创建分页对象，开始分页
        Page<TCarInsuranceEntity> page = new Page<>(index,limit);
        // 给分页对象赋查到的列表值
        page.setRecords(tCarInsuranceEntities);
        page.setTotal(tCarInsuranceEntities.size());
        return new PageUtils(page);
    }

}