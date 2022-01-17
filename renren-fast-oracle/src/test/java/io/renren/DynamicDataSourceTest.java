/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 * <p>
 * https://www.renren.io
 * <p>
 * 版权所有，侵权必究！
 */

package io.renren;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.common.utils.R;
import io.renren.modules.generator.dao.TCarCarDao;
import io.renren.modules.generator.dao.TCarRunDao;
import io.renren.modules.generator.entity.*;
import io.renren.modules.generator.service.TCarCarService;
import io.renren.modules.generator.service.TCarRunService;
import io.renren.modules.generator.service.impl.TCarRunServiceImpl;
import io.renren.service.DynamicDataSourceTestService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

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
    private TCarRunService tCarRunService;
    @Autowired
    private TCarCarDao tCarCarDao;

    @Test
    public void test() throws ParseException {
        Long id = 1L;

//        dynamicDataSourceTestService.updateUser(id);
//        dynamicDataSourceTestService.updateUserBySlave1(id);
//        dynamicDataSourceTestService.updateUserBySlave2(id);

//        List<List<Integer>> numDayList = new ArrayList<>();
//        List<Integer> numList = new ArrayList<>();
//        List<Integer> dayList = new ArrayList<>();
//        Map<Integer,TCarStatusEntity> map = new HashMap<>();
//        Map<Integer,Map<Integer,TCarStatusEntity>> mapMap = new HashMap<>();
//        TCarStatusEntity entity = new TCarStatusEntity();
//        for (int i = 0; i < 10; i++) {
//            for (int j = 1; j <= 31; j++) {
//                TCarStatusEntity entity1 = new TCarStatusEntity();
//                entity1.setCarnum(j+"");
//                map.put(j,entity1);
//                mapMap.put(i,map);
//            }
//        }

//        final Set<Integer> keySet = mapMap.keySet();
//        for (Integer k:keySet) {
//            Map<Integer, TCarStatusEntity> map1 = mapMap.get(k);
//            final Set<Integer> integers = map1.keySet();
//            for (Integer s: integers) {
//                final TCarStatusEntity entity1 = map1.get(s);
//                System.out.println(entity1);
//            }
//        }
        Map<String, Object> map = new HashMap<>();
        map.put("page", 1);
        map.put("limit", 10);
        final Page<TCarCarEntity> page = tCarCarService.selectTCarByCondition(null, map);
        final List<TCarCarEntity> records = page.getRecords();
        final BigDecimal totalPrice = records.stream()
                .filter(s -> s.getBuyprice() != null)
                .map(TCarCarEntity::getBuyprice)
                .reduce(BigDecimal.ZERO, BigDecimal::add);
        System.out.println(totalPrice);
        final List<String> pricePercentObj = records.stream()
                .mapToDouble(price -> price.getBuyprice().doubleValue() / totalPrice.doubleValue())
                .boxed()
                .mapToLong(weight -> (long) (weight * 100))
                .mapToObj(percentPrice -> percentPrice + "%")
                .collect(Collectors.toList());
        System.out.println(pricePercentObj);
        final Map<String, List<TCarCarEntity>> collect = records.stream()
                .collect(Collectors.groupingBy(TCarCarEntity::getCompany));
        for (Map.Entry<String, List<TCarCarEntity>> entry : collect.entrySet()) {
            String c = entry.getKey();
            List<TCarCarEntity> t = entry.getValue();
            System.out.println(c + "=>" + t);
        }
        final Map<String, List<TCarCarEntity>> collect1 = records.stream()
                .collect(Collectors.groupingBy(TCarCarEntity::getUsecompany));
        for (Map.Entry<String, List<TCarCarEntity>> t : collect1.entrySet()) {
            String c = t.getKey();
            final List<String> list = t.getValue().stream()
                    .map(TCarCarEntity::getNumber)
                    .collect(Collectors.toList());
            System.out.println(c + "=>" + list);
        }


        final List<TypeTree> typeTreeList = tCarCarService.selectTypeTree();
        final List<String> list = typeTreeList.stream().map(TypeTree::getLabel).collect(Collectors.toList());

    }

    private String dateFormat(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        final String format = sdf.format(date);
        return format;
    }

}
