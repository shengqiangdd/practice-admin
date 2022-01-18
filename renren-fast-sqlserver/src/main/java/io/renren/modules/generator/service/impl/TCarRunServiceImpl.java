package io.renren.modules.generator.service.impl;

import com.alibaba.druid.util.StringUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.modules.generator.dao.TCarRunDao;
import io.renren.modules.generator.entity.*;
import io.renren.modules.generator.service.TCarRunService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;


@Service("tCarRunService")
public class TCarRunServiceImpl extends ServiceImpl<TCarRunDao, TCarRunEntity> implements TCarRunService {

    @Autowired
    private TCarRunDao tCarRunDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarRunEntity> page = this.page(
                new Query<TCarRunEntity>().getPage(params),
                new QueryWrapper<TCarRunEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public Page<TCarRunEntity> selectTCarByCondition(TCarRunEntity tCarRun, Map<String, Object> params) {
        QueryWrapper queryWrapper = insCondition(tCarRun, params);
        // 从前台获取到的起始页和条数
        Long index = Long.valueOf(params.get("page").toString());
        Long limit = Long.valueOf(params.get("limit").toString());
        // 构造分页参数
        Page<TCarRunEntity> page = new Page<>(index, limit);
        // 封装where条件
        return this.baseMapper.selectTCarByCondition(page, queryWrapper);
    }

    @Override
    public List<TCarRunTypeTree> selectTypeTree() {
        List<String> comps = this.baseMapper.selectUseCompany();
        final List<YearMonthEntity> yearMonthEntities = this.baseMapper.selectYearAndMonth();
        List<String> months = new ArrayList<>();
        List<Tree> monthTrees = new ArrayList<>();
        List<TCarRunTimeTree> useComTreeList = new ArrayList<>();
        List<TCarRunTimeTree> timeTreeList = new ArrayList<>();
        List<TCarRunTypeTree> typeTrees = new ArrayList<>();
        for (int i = 0; i < comps.size(); i++) {
            List<String> list = this.baseMapper.selectNumberByUseCompany(comps.get(i));
            List<Tree> numTree = getTrees(list);
            TCarRunTimeTree runTimeTree = new TCarRunTimeTree((i + 1) * 5, comps.get(i), null, numTree);
            useComTreeList.add(runTimeTree);
        }
        for (int i = 0; i < yearMonthEntities.size(); i++) {
            String year = yearMonthEntities.get(i).getYear();
            TCarRunTimeTree timeTree = new TCarRunTimeTree(Integer.parseInt(year), year + "年", year, null);
            List<YearMonthEntity> entities = yearMonthEntities.stream()
                    .filter(y -> y.getYear().equals(year))
                    .collect(Collectors.toList());
            monthTrees = new ArrayList<>();
            for (YearMonthEntity m : entities) {
                int month = Integer.parseInt(m.getMonth());
                Tree tree = new Tree(i + month, month + "月",
                        month < 10 ? "0" + month : String.valueOf(month));
                monthTrees.add(tree);
            }
            timeTree.setChildren(monthTrees);
            List<TCarRunTimeTree> collect = timeTreeList.stream().filter(t -> t.getId() == Integer.parseInt(year))
                    .collect(Collectors.toList());
            if (collect.size() >= 1) {
                continue;
            }
            timeTreeList.add(timeTree);
        }
        TCarRunTypeTree tCarRunTypeTree = new TCarRunTypeTree(2L, "按使用单位", useComTreeList);
        TCarRunTypeTree tCarRunTimeTree = new TCarRunTypeTree(3L, "按时间", timeTreeList);
        typeTrees.add(tCarRunTypeTree);
        typeTrees.add(tCarRunTimeTree);
        return typeTrees;
    }

    private List<Tree> getTrees(List<String> list) {
        List<Tree> treeList = new ArrayList<>();

        for (int i = 0; i < list.size(); i++) {
            Tree tree = new Tree((i + 1) * 5, list.get(i), null);
            treeList.add(tree);
        }
        return treeList;
    }

    private QueryWrapper insCondition(TCarRunEntity tCarRun, Map<String, Object> params) {
        QueryWrapper queryWrapper = new QueryWrapper();
        if (tCarRun != null) {
            if (tCarRun.getCarid() != null) {
                queryWrapper.eq("tcr.carid", tCarRun.getCarid());
            }
        }
        if (params != null) {
            final Object begintime = params.get("begintime");
            final Object endtime = params.get("endtime");
            if (begintime != null && endtime != null) {
                queryWrapper.between("tcr.begintime", begintime, endtime);
            }
            String carnum = (String) params.get("carnum");
            if (!StringUtils.isEmpty(carnum)) {
                queryWrapper.eq("tcc.number", carnum);
            }
            String depname = (String) params.get("depname");
            if (!StringUtils.isEmpty(depname)) {
                queryWrapper.eq("tcc.usecompany", depname);
            }
            String treeMonth = (String) params.get("treeMonth");
            if (!StringUtils.isEmpty(treeMonth)) {
                int day = getDayOfMonth(treeMonth);
                String d = treeMonth.substring(0, treeMonth.length() - 2);
                queryWrapper.between("tcr.begintime", treeMonth, d + day);
            }
        }
        return queryWrapper;
    }

    //java获取当前月的天数
    public int getDayOfMonth(String date) {
        Date time = null;
        try {
            time = parseDate(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Calendar aCalendar = Calendar.getInstance(Locale.CHINA);
        aCalendar.setTime(time);
        int day = aCalendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        return day;
    }

    private Date parseDate(String date) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.parse(date);
    }

}