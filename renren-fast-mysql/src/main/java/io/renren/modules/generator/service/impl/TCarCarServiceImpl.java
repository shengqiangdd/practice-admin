package io.renren.modules.generator.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.common.utils.R;
import io.renren.modules.generator.entity.*;
import javafx.scene.control.Pagination;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alibaba.druid.util.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;
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
        JSONArray dataArray = new JSONArray();
        String type = map.get("type").toString();
        List<DateTime> dateTimeList = Arrays.asList(new DateTime[8]);

        list = this.baseMapper.selectTCarStatus(queryWrapper);
        if (StringUtils.isEmpty(begintime) && StringUtils.isEmpty(endtime)) {
            begintime = new DateTime(new Date()).dayOfMonth().withMinimumValue().toString("yyyy-MM-dd"); // 当前月第一天
            endtime = new DateTime(new Date()).dayOfMonth().withMaximumValue().toString("yyyy-MM-dd"); // 当前月最后一天
        } else {
            begintime = map.get("begintime").toString();
            endtime = map.get("endtime").toString();
        }
        DateTime beginDateTime = new DateTime(begintime);
        DateTime endDateTime = new DateTime(endtime);
        DateTime currentDateTime = null;
        for (int i = 0; i < 7; i++) {
            currentDateTime = beginDateTime.plusDays(i);
            dateTimeList.set(i + 1, currentDateTime); // 一个星期的列表
        }
        int day = endDateTime.getDayOfMonth();
        int startIndex = 1;
        if (type.equals("week")) {
            day = 7;
        }
        for (int i = 0; i < list.size(); i++) {
            String carnum = list.get(i).getCarnum();
            int carid = list.get(i).getCarid().intValue();
            int id = list.get(i).getId().intValue();
            Integer status = list.get(i).getStatus();
            DateTime startTime = new DateTime(list.get(i).getBegintime()).withTimeAtStartOfDay();
            DateTime endTime = new DateTime(list.get(i).getEndtime()).withTimeAtStartOfDay();
            String carBeginTime = startTime.toString("yyyy-MM-dd"); // 当前车的开始日期
            String carEndTime = endTime.toString("yyyy-MM-dd"); // 当前车的结束日期
            int betweenDays = Days.daysBetween(startTime, endTime).getDays();
            entityMap = new HashMap<>();
            for (int j = startIndex; j <= day; j++) {
                TCarStatusEntity entity = new TCarStatusEntity();
                if (type.equals("week")) {
                    int dayOfWeek = dateTimeList.get(j).getDayOfWeek();
                    entity.setKey(dayOfWeek);
                    entity.setLabel(weekFormat(dayOfWeek) + dateTimeList.get(j).toString("MM-dd"));
                    entity.setDate(dateTimeList.get(j).toString("yyyy-MM-dd"));
                } else {
                    entity.setKey(j);
                    entity.setLabel(beginDateTime.plusDays(j - 1).toString("MM-dd"));
                    entity.setDate(beginDateTime.plusDays(j - 1).toString("yyyy-MM-dd"));
                }
                if (monthEntities.size() < day) {
                    TCarStatusEntity statusEntity = new TCarStatusEntity();
                    statusEntity.setKey(j);
                    statusEntity.setLabel(entity.getLabel());
                    statusEntity.setDate(entity.getDate());
                    monthEntities.add(statusEntity);
                }
                entity.setCarnum(carnum);
                entity.setCarid(carid);
                DateTime dateTime = new DateTime(entity.getDate()).withTimeAtStartOfDay();
                if (startTime.isEqual(dateTime)
                        || (dateTime.isAfter(startTime)
                        && dateTime.isBefore(endTime))
                        && status != null && status == 1) { // 判断生成的日期跟当前车的开始日期是否相等，相等即设置出车状态
                    entity.setColor("red");
                    entity.setValue("出车");
                }
                entityMap.put(j, entity);
                if (numDayList.get(id) != null
                        && numDayList.get(id).get(j) != null) { // 如果list存在该id索引则替换掉该id索引的值
                    numDayList.get(id).replace(j, entity);
                } else {
                    numDayList.put(id, entityMap);
                }
            }
        }
        Set<Integer> integers = numDayList.keySet();
        List<TCarStatusEntity> entities = null;
        for (Integer i : integers) { // 遍历map转换为list
            Map<Integer, TCarStatusEntity> dataMap = numDayList.get(i);
            Set<Integer> integers1 = dataMap.keySet();
            entities = Arrays.asList(new TCarStatusEntity[day + 1]);
            for (Integer k : integers1) {
                TCarStatusEntity entity = dataMap.get(k);
//                dayArray.set(k, entities);
                entities.set(k, entity);
                if (k == integers1.size()) {
                    dataArray.set(i, entities);
                }
            }
        }

        return R.ok().put("list", list).put("dlist", dataArray).put("dates", monthEntities);
    }

    @Override
    public Integer addDriverByCarId(Map<String, Object> map) {
        Integer driverId = (Integer) map.get("driverId");
        Integer carId = (Integer) map.get("carId");
        return this.baseMapper.addDriverByCarId(driverId, carId);
    }

    private List<Tree> getTrees(List<String> list, List<Long> list1, String type) {
        List<Tree> treeList = new ArrayList<>();
        if (list1 != null) {
            for (int i = 0; i < list1.size(); i++) {
                Tree tree = new Tree(i + 2 * 7, list1.get(i) == 1 ?
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
        Optional<TCarCarEntity> car = Optional.ofNullable(tCarCar);
        if (car.isPresent()) {
            if (!StringUtils.isEmpty(tCarCar.getNumber())) {
                queryWrapper.eq("tcc.number", tCarCar.getNumber());
            }
            if (!StringUtils.isEmpty(tCarCar.getBrand())) {
                queryWrapper.eq("tcc.brand", tCarCar.getBrand());
            }
            if (!StringUtils.isEmpty(tCarCar.getModel())) {
                queryWrapper.eq("tcc.model", tCarCar.getModel());
            }
            if (tCarCar.getType() != null) {
                queryWrapper.eq("tcc.type", tCarCar.getType());
            }
            if (tCarCar.getSeating() != null) {
                queryWrapper.eq("tcc.seating", tCarCar.getSeating());
            }
            if (!StringUtils.isEmpty(tCarCar.getCompany())) {
                queryWrapper.eq("tcc.company", tCarCar.getCompany());
            }
            if (!StringUtils.isEmpty(tCarCar.getUsecompany())) {
                queryWrapper.eq("tcc.usecompany", tCarCar.getUsecompany());
            }
        }
        // 如果购置日期不为空，加上购置日期的构造条件
        if (params != null) {
            Object buydate1 = params.get("buydate1");
            Object buydate2 = params.get("buydate2");
            if (buydate1 != null && buydate2 != null) {
                buydate1 = new DateTime(params.get("buydate1")).toString("yyyy-MM-dd");
                buydate2 = new DateTime(params.get("buydate2")).toString("yyyy-MM-dd");
                queryWrapper.between("tcc.buydate", buydate1, buydate2);
            }
            if (params.get("ntype") != null) {
                queryWrapper.eq("tcc.`type`", params.get("ntype"));
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

    private String weekFormat(int day) {
        String week = "";
        switch (day) {
            case 1:
                week = "星期一";
                break;
            case 2:
                week = "星期二";
                break;
            case 3:
                week = "星期三";
                break;
            case 4:
                week = "星期四";
                break;
            case 5:
                week = "星期五";
                break;
            case 6:
                week = "星期六";
                break;
            case 7:
                week = "星期天";
                break;
        }
        return week;
    }

}