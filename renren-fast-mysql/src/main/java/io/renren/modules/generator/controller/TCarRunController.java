package io.renren.modules.generator.controller;

import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.dao.TCarCarDao;
import io.renren.modules.generator.entity.*;
import io.renren.modules.generator.service.TCarDeptService;
import io.renren.modules.generator.service.TCarRunTreeService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.generator.service.TCarRunService;
import io.renren.common.utils.R;



/**
 * 出车记录
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@RestController
@RequestMapping("generator/tcarrun")
public class TCarRunController {
    @Autowired
    private TCarRunService tCarRunService;

    @Autowired
    private TCarRunTreeService tCarRunTreeService;

    @Autowired
    private TCarDeptService tCarDeptService;

    @Autowired
    private TCarCarDao tCarCarDao;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarrun:list")
    public R list(@RequestParam Map<String, Object> params,
                  TCarRunEntity tCarRun){
        Page<TCarRunEntity> page = tCarRunService.selectTCarByCondition(tCarRun, params);

        List<TCarDeptEntity> useCarPeopleList = tCarDeptService.selectAllUseCarPeople();

        List<YearMonthEntity> yearMonthEntities = tCarRunService.selectYearAndMonth();
//        Optional<TCarRunTreeEntity> first = trees.stream().filter(t ->
//                t.getTreeId() == 100).findFirst().get().getChildren()
//                .stream().filter(t -> t.getTreeId() == 102).findFirst();

            useCarPeopleList.stream().forEach(u -> {
                TCarRunTreeEntity useComTree = new TCarRunTreeEntity();
                useComTree.setLabel(u.getDeptName());
                useComTree.setParentId(102L);
                useComTree.setOrderNum(3L);
                QueryWrapper<TCarRunTreeEntity> queryWrapper = new QueryWrapper<>();
                queryWrapper.eq("label",u.getDeptName());
                List<TCarRunTreeEntity> list = tCarRunTreeService.getBaseMapper().selectList(queryWrapper);
                if (list.size() <= 0) {
                    tCarRunTreeService.save(useComTree);
                }
                List<String> numbers = tCarCarDao.selectNumberByUseCompany(u.getDeptName());
                numbers.stream().forEach(n -> {
                    TCarRunTreeEntity numberTree = new TCarRunTreeEntity();
                    numberTree.setLabel(n);
                    numberTree.setParentId(useComTree.getTreeId());
                    numberTree.setOrderNum(4L);
                    QueryWrapper<TCarRunTreeEntity> numWrapper = new QueryWrapper<>();
                    numWrapper.eq("label",n);
                    List<TCarRunTreeEntity> numList = tCarRunTreeService.getBaseMapper().selectList(numWrapper);
                    if (numList.size() <= 0) {
                        tCarRunTreeService.save(numberTree);
                    }
                });
//                treeEntityList.add(treeEntity);
            });
            AtomicBoolean flag1 = new AtomicBoolean(false);
            AtomicBoolean flag2 = new AtomicBoolean(false);
            yearMonthEntities.stream().forEach(y -> {
//                y.setYearMonth(y.getYear()+"-"+y.getMonth());
                TCarRunTreeEntity timeTree = new TCarRunTreeEntity();
                timeTree.setLabel(y.getYear()+"年");
                timeTree.setParentId(101L);
                timeTree.setOrderNum(2L);
                QueryWrapper<TCarRunTreeEntity> timeWrapper = new QueryWrapper<>();
                timeWrapper.eq("label",y.getYear()+"年");
                List<TCarRunTreeEntity> timeList = tCarRunTreeService.getBaseMapper().selectList(timeWrapper);
                if (timeList.size() <= 0) {
                    tCarRunTreeService.save(timeTree);
                }
                List<String> monthList = tCarRunService.selectMonthByYear(y.getYear());
                TCarRunTreeEntity entity = tCarRunTreeService.getBaseMapper().selectList(timeWrapper).get(0);
                monthList.stream().forEach(m -> {
                    TCarRunTreeEntity monthTree = new TCarRunTreeEntity();
                    monthTree.setLabel(m+"月");
                    monthTree.setParentId(entity.getTreeId());
                    monthTree.setOrderNum(3L);

                    QueryWrapper<TCarRunTreeEntity> queryWrapper = new QueryWrapper<>();
                    queryWrapper.apply("parent_id = {0} and label = {1}",entity.getTreeId(),m+"月");
                    List<TCarRunTreeEntity> list = tCarRunTreeService.getBaseMapper().selectList(queryWrapper);
                    if (list.size() <= 0) {
                        tCarRunTreeService.save(monthTree);
                    }
                });
            });
        List<TCarRunTreeEntity> trees = tCarRunTreeService.selectDeptAndChildren();
//            tCarRunTreeEntity.setChildren(treeEntityList);
        return R.ok().put("page", page).put("trees",trees);
    }


    /**
     * 分类列表
     */
    @RequestMapping("/typelist")
    @RequiresPermissions("generator:tcarrun:list")
    public R typeList(){
        final List<TCarRunTypeTree> typeTrees = tCarRunService.selectTypeTree();

        return R.ok().put("list", typeTrees);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:tcarrun:info")
    public R info(@PathVariable("id") Long id){
		TCarRunEntity tCarRun = tCarRunService.getById(id);
        List<TCarDeptEntity> useCarPeopleList = tCarDeptService.selectAllUseCarPeople();
        return R.ok().put("tCarRun", tCarRun).put("useList",useCarPeopleList);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarrun:save")
    public R save(@RequestBody TCarRunEntity tCarRun){
		tCarRunService.save(tCarRun);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarrun:update")
    public R update(@RequestBody TCarRunEntity tCarRun){
		tCarRunService.updateById(tCarRun);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarrun:delete")
    public R delete(@RequestBody Long[] ifs){
		tCarRunService.removeByIds(Arrays.asList(ifs));

        return R.ok();
    }

}
