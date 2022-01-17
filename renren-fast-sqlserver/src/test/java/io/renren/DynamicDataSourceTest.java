/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package io.renren;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.renren.common.utils.R;
import io.renren.modules.generator.dao.TCarRunDao;
import io.renren.modules.generator.entity.*;
import io.renren.modules.generator.service.TCarCarService;
import io.renren.service.DynamicDataSourceTestService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 多数据源测试
 *
 * @author Mark sunlightcs@gmail.com
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class DynamicDataSourceTest {
    @Autowired
    private DynamicDataSourceTestService dynamicDataSourceTestService;
    @Autowired
    private TCarCarService tCarCarService;
    @Autowired
    private TCarRunDao tCarCarDao;

    @Test
    public void test() throws ParseException {
        Long id = 1L;

//        dynamicDataSourceTestService.updateUser(id);
//        dynamicDataSourceTestService.updateUserBySlave1(id);
//        dynamicDataSourceTestService.updateUserBySlave2(id);

        QueryWrapper queryWrapper = new QueryWrapper();

//        queryWrapper.eq("begintime","20211201");
//        queryWrapper.between("begintime","20211201","20211231");
//        queryWrapper.eq("endtime","20211231");
//        List<TCarRunEntity> tCarRunEntities = tCarCarDao.selectTCarByCondition(queryWrapper);
//        tCarRunEntities.forEach(t -> {
//            System.out.println(t);
//        });

//        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//        Date date = sdf.parse("20211201");
//        Calendar aCalendar = Calendar.getInstance(Locale.CHINA);
//        aCalendar.setTime(date);
//        int day = aCalendar.getActualMaximum(Calendar.DAY_OF_MONTH);
//        String s = "20211201";
//        System.out.println(s.substring(0,s.length() - 2));
//        System.out.println("day"+day);
//        final Date date1 = new Date();
//        final Date date2 = sdf.parse("2021-12-02");
//        final String date3 = sdf.format(date2);
//        System.out.println(date2  + "--" + date3 );

        List<List<Integer>> numDayList = new ArrayList<>();
        List<Integer> numList = new ArrayList<>();
        List<Integer> dayList = new ArrayList<>();
        Map<Integer,TCarStatusEntity> map = new HashMap<>();
        Map<Integer,Map<Integer,TCarStatusEntity>> mapMap = new HashMap<>();
        TCarStatusEntity entity = new TCarStatusEntity();
        for (int i = 0; i < 10; i++) {
            for (int j = 1; j <= 31; j++) {
                TCarStatusEntity entity1 = new TCarStatusEntity();
                entity1.setCarnum(j+"");
                map.put(j,entity1);
                mapMap.put(i,map);
            }
        }

        final Set<Integer> keySet = mapMap.keySet();
        for (Integer k:keySet) {
            Map<Integer, TCarStatusEntity> map1 = mapMap.get(k);
            final Set<Integer> integers = map1.keySet();
            for (Integer s: integers) {
                final TCarStatusEntity entity1 = map1.get(s);
                System.out.println(entity1);
            }
        }

        final List<TypeTree> typeTreeList = tCarCarService.selectTypeTree();
        typeTreeList.stream().forEach(t -> {
            System.out.println(t);
        });

//        final List<TCarStateEntity> entities = tCarCarService.selectTCarStatus();
//        entities.stream().forEach(t -> {
//            System.out.println(t);
//        });
//        System.out.println(getDayOfMonth("2021-12"));
//        companys.stream().distinct().forEach(c -> System.out.println(c));
//        usecompanys.stream().distinct().forEach(u -> System.out.println(u));
//        types.stream().distinct().forEach(t -> System.out.println(t));

    }

    private String dateFormat(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        final String format = sdf.format(date);
        return format;
    }

}
