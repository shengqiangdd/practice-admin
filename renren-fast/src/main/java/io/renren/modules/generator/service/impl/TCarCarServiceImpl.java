package io.renren.modules.generator.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.common.utils.R;
import io.renren.modules.generator.entity.*;
import javafx.scene.control.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alibaba.druid.util.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Stream;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarCarDao;
import io.renren.modules.generator.service.TCarCarService;


@Service("tCarCarService")
public class TCarCarServiceImpl extends ServiceImpl<TCarCarDao, TCarCarEntity> implements TCarCarService {

    @Autowired
    private TCarCarDao tCarCarDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarCarEntity> page = this.page(
                new Query<TCarCarEntity>().getPage(params),
                new QueryWrapper<TCarCarEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public Page<TCarCarEntity> selectTCarByCondition(TCarCarEntity tCarCar, Map<String, Object> params) {
        QueryWrapper queryWrapper = insCondition(tCarCar, params);
//        IPage<TCarCarEntity> page1 = this.page(new Query<TCarCarEntity>().getPage(params), queryWrapper);
        // 从前台获取到的起始页和条数
        Integer index = Integer.valueOf(params.get("page").toString());
        Integer limit = Integer.valueOf(params.get("limit").toString());
        // 构造分页参数
        Page<TCarCarEntity> page = new Page<>(index, limit);
        // 封装where条件
        return this.baseMapper.selectTCarByCondition(page, queryWrapper);
    }

    @Override
    public Page<TCarCarEntity> selectTCarAndRunByCondition(TCarCarEntity tCarCar, Map<String, Object> params) {
        QueryWrapper queryWrapper = insCondition(tCarCar, params);
        // 从前台获取到的起始页和条数
        Integer index = Integer.valueOf(params.get("page").toString());
        Integer limit = Integer.valueOf(params.get("limit").toString());
        // 构造分页参数
        Page<TCarCarEntity> page = new Page<>(index, limit);
        // 封装where条件
        return this.baseMapper.selectTCarAndRunByCondition(page, queryWrapper);
    }

    @Override
    public List<TypeTree> selectTypeTree() {
        final List<Long> types = this.baseMapper.selectType();
        final List<String> companys = this.baseMapper.selectCompany();
        final List<String> useCompnays = this.baseMapper.selectUseCompnay();
        final List<Tree> comListObj = getTrees(companys, null, "com");
        final List<Tree> useComListObj = getTrees(useCompnays, null, "useCom");
        final List<Tree> typeListObj = getTrees(null, types, "model");
        TypeTree typeTree = new TypeTree("按车辆类型", 1, typeListObj);
        TypeTree comTree = new TypeTree("按单位注册", 2, comListObj);
        TypeTree useComTree = new TypeTree("按使用单位", 3, useComListObj);
        TypeTree allTree = new TypeTree("所有车辆", 4, null);
        List<TypeTree> typeTreeList = new ArrayList<>();
        typeTreeList.add(typeTree);
        typeTreeList.add(comTree);
        typeTreeList.add(useComTree);
        typeTreeList.add(allTree);
        return typeTreeList;
    }

    @Override
    public R selectTCarStatus(Map<String, Object> map) {
        QueryWrapper queryWrapper = new QueryWrapper();
        String begintime = map.get("begintime").toString();
        List<TCarStateEntity> list = new ArrayList<>();
        String endtime = map.get("endtime").toString();
        List<Map<Integer, TCarStatusEntity>> dList = new ArrayList<>();
        List<TCarStatusEntity> monthEntities = new ArrayList<>();
        Map<Integer, Map<Integer, TCarStatusEntity>> numDayList = new HashMap<>();
        Map<Integer, TCarStatusEntity> entityMap = null;
        JSONObject jsonObject = new JSONObject();
        JSONArray dataArray = new JSONArray();
        if (!StringUtils.isEmpty(begintime) && !StringUtils.isEmpty(endtime)) {
            queryWrapper.between("tcr.begintime", begintime, endtime);
            list = this.baseMapper.selectTCarStatus(queryWrapper);
            String[] dates = begintime.split("-");
            int day = getDayOfMonth(begintime, "yyyy-MM-dd");
            for (int i = 0; i < list.size(); i++) {
                String carnum = list.get(i).getCarnum();
                int carid = list.get(i).getCarid().intValue();
                final Date carBeginTime = list.get(i).getBegintime();
                entityMap = new HashMap<>();
                for (int j = 1; j <= day; j++) {
                    TCarStatusEntity entity = new TCarStatusEntity();
                    entity.setKey(j);
                    entity.setLabel(dates[1] + "-" + (j < 10 ? "0" + j : j));
                    entity.setDate(dates[0] + "-" + dates[1] + "-" + (j < 10 ? "0" + j : j));
                    if (monthEntities.size() < day) {
                        TCarStatusEntity statusEntity = new TCarStatusEntity();
                        statusEntity.setKey(j);
                        statusEntity.setLabel(dates[1] + "-" + (j < 10 ? "0" + j : j));
                        statusEntity.setDate(dates[0] + "-" + dates[1] + "-" + (j < 10 ? "0" + j : j));
                        monthEntities.add(statusEntity);
                    }
                    entity.setColor("green");
                    entity.setValue("空闲");
                    entity.setCarnum(carnum);
                    entity.setCarid(carid);
                    if (entity.getDate().equals(dateFormat(carBeginTime))
                            && list.get(i).getStatus() != null
                            && list.get(i).getStatus() == 1) {
                        entity.setColor("red");
                        entity.setValue("出车");
                    }
                    entityMap.put(j, entity);
                    numDayList.put(carid, entityMap);
//                    Stream<TCarStateEntity> tCarStateEntityStream =
//                            list.stream().filter(l -> {
//                                return dateFormat(l.getBegintime()).equals(entity.getDate());
//                            });
//                    if (tCarStateEntityStream != null) {
//                        tCarStateEntityStream.forEach(t -> {
//                            if (t.getStatus() != null && t.getStatus() == 1) {
//                                entity.setCarnum(t.getCarnum());
//                                entity.setValue("出车");
//                                entity.setColor("red");
//                            }
//                        });
//                    }

                }
            }
            Set<Integer> integers = numDayList.keySet();
            List<Integer> IdList = new ArrayList<>();
            List<Integer> dayList = new ArrayList<>();
            List<TCarStatusEntity> entities = null;
            Map<Integer, TCarStatusEntity> map1 = null;
            List<Map<Integer, TCarStatusEntity>> mapList = new ArrayList<>();
            JSONArray dayArray = new JSONArray();
            Integer[][] iArray = new Integer[][]{};
            for (Integer i : integers) {
                IdList.add(i);
                Map<Integer, TCarStatusEntity> dataMap = numDayList.get(i);
                Set<Integer> integers1 = dataMap.keySet();
                map1 = new HashMap<>();
                dayArray.clear();
                entities = Arrays.asList(new TCarStatusEntity[day + 1]);
                for (Integer k : integers1) {
                    dayList.add(k);
                    dayArray.add(k);
                    TCarStatusEntity entity = dataMap.get(k);
                    dayArray.set(k, entities);
                    entities.set(k, entity);
                    if (k == integers1.size()) {
                        jsonObject.put(i.toString(), entities);
                        dataArray.set(i, entities);
                    }
                }
            }
            System.out.println(jsonObject);
        } else {
            list = this.baseMapper.selectTCarStatus(queryWrapper);
        }
        return R.ok().put("list", list).put("dlist", dataArray).put("dates", monthEntities);
    }

    @Override
    public Integer updateDriverByCarId(Map<String, Object> map) {
        Integer driverId = (Integer) map.get("driverId");
        Integer carId = (Integer) map.get("carId");
        return this.baseMapper.updateDriverByCarId(driverId,carId);
    }

    private List<Tree> getTrees(List<String> list, List<Long> list1, String type) {
        List<Tree> treeList = new ArrayList<>();
        if (list1 != null) {
            for (int i = 0; i < list1.size(); i++) {
                Tree tree = new Tree(i + 2 *  7, list1.get(i) == 1 ?
                        "小轿车" : list1.get(i) == 2 ? "大货车" : "",
                        String.valueOf(list1.get(i)));
                treeList.add(tree);
            }
        } else {
            if (type.equals("com")) {
                for (int i = 0; i < list.size(); i++) {
                    Tree tree = new Tree(i + 2 * 5, list.get(i), null);
                    treeList.add(tree);
                }
            } else if (type.equals("useCom")) {
                for (int i = 0; i < list.size(); i++) {
                    Tree tree = new Tree(i + 3 * 6, list.get(i), null);
                    treeList.add(tree);
                }
            }
        }
        return treeList;
    }

    private QueryWrapper insCondition(TCarCarEntity tCarCar, Map<String, Object> params) {
        QueryWrapper queryWrapper = new QueryWrapper();
        // 如果tCarCar不为空，然后它的属性不为空，分别加上构造条件
        if (tCarCar != null) {
            if (!StringUtils.isEmpty(tCarCar.getNumber())) {
                queryWrapper.eq("tcc.[number]", tCarCar.getNumber());
            }
            if (!StringUtils.isEmpty(tCarCar.getBrand())) {
                queryWrapper.eq("tcc.[brand]", tCarCar.getBrand());
            }
            if (!StringUtils.isEmpty(tCarCar.getModel())) {
                queryWrapper.eq("tcc.[model]", tCarCar.getModel());
            }
            if (tCarCar.getType() != null) {
                queryWrapper.eq("tcc.[type]", tCarCar.getType());
            }
            if (!StringUtils.isEmpty(tCarCar.getCompany())) {
                queryWrapper.eq("tcc.[company]", tCarCar.getCompany());
            }
            if (!StringUtils.isEmpty(tCarCar.getUsecompany())) {
                queryWrapper.eq("tcc.[usecompany]", tCarCar.getUsecompany());
            }
        }
        // 如果购置日期不为空，加上购置日期的构造条件
        if (params != null) {
            Object buydate1 = params.get("buydate1");
            Object buydate2 = params.get("buydate2");
            if (buydate1 != null || buydate2 != null) {
                queryWrapper.between("tcc.[buydate]", buydate1, buydate2);
            }
            if (params.get("ntype") != null) {
                queryWrapper.eq("tcc.[type]", params.get("ntype"));
            }
        }
        return queryWrapper;
    }

    //java获取当前月的天数
    public int getDayOfMonth(String date, String pattern) {
        Date time = null;
        try {
            time = parseDate(date, pattern);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Calendar aCalendar = Calendar.getInstance(Locale.CHINA);
        aCalendar.setTime(time);
        int day = aCalendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        return day;
    }

    private Date parseDate(String date, String pattern) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        return sdf.parse(date);
    }

    private String dateFormat(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(date);
    }

}