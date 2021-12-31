package io.renren.modules.generator.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.alibaba.druid.util.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.entity.TCarStateEntity;
import io.renren.modules.generator.entity.TypeTree;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.generator.entity.TCarCarEntity;
import io.renren.modules.generator.service.TCarCarService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 车辆档案
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@RestController
@RequestMapping("generator/tcarcar")
public class TCarCarController {
    @Autowired
    private TCarCarService tCarCarService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarcar:list")
    public R list(@RequestParam Map<String, Object> params,
                  TCarCarEntity tCarCar){
        Page<TCarCarEntity> page = null;
        String name = (String) params.get("name");
        if (!StringUtils.isEmpty(name) && name.equals("tCarAndRun")) {
            page = tCarCarService.selectTCarAndRunByCondition(tCarCar, params);
        } else {
            page = tCarCarService.selectTCarByCondition(tCarCar, params);
        }
        return R.ok().put("page", page);
    }

    /**
     * 分类树列表
     */
    @RequestMapping("/typelist")
    @RequiresPermissions("generator:tcarcar:list")
    public R typeList(){
        final List<TypeTree> typeTreeList = tCarCarService.selectTypeTree();
        return R.ok().put("list", typeTreeList);
    }

    /**
     * 车辆状态
     */
    @RequestMapping("/tcarstatus")
    @RequiresPermissions("generator:tcarcar:list")
    public R status(@RequestParam Map<String,Object> map){
        return tCarCarService.selectTCarStatus(map);
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:tcarcar:info")
    public R info(@PathVariable("id") Long id){
		TCarCarEntity tCarCar = tCarCarService.getById(id);

        return R.ok().put("tCarCar", tCarCar);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarcar:save")
    public R save(@RequestBody TCarCarEntity tCarCar){
		tCarCarService.save(tCarCar);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarcar:update")
    public R update(@RequestBody TCarCarEntity tCarCar){
		tCarCarService.updateById(tCarCar);

        return R.ok();
    }

    /**
     * 修改司机
     */
    @RequestMapping("/updateDriver")
    @RequiresPermissions("generator:tcarcar:update")
    public R update(@RequestParam Map<String,Object> map){
        tCarCarService.updateDriverByCarId(map);
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarcar:delete")
    public R delete(@RequestBody Long[] ids){
		tCarCarService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
