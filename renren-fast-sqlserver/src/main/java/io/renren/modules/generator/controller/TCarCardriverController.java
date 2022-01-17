package io.renren.modules.generator.controller;

import java.util.Arrays;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.generator.entity.TCarCardriverEntity;
import io.renren.modules.generator.service.TCarCardriverService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 车辆司机关联表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@RestController
@RequestMapping("generator/tcarcardriver")
public class TCarCardriverController {
    @Autowired
    private TCarCardriverService tCarCardriverService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarcardriver:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tCarCardriverService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:tcarcardriver:info")
    public R info(@PathVariable("id") Long id){
		TCarCardriverEntity tCarCardriver = tCarCardriverService.getById(id);

        return R.ok().put("tCarCardriver", tCarCardriver);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarcardriver:save")
    public R save(@RequestBody TCarCardriverEntity tCarCardriver){
		tCarCardriverService.save(tCarCardriver);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarcardriver:update")
    public R update(@RequestBody TCarCardriverEntity tCarCardriver){
		tCarCardriverService.updateById(tCarCardriver);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarcardriver:delete")
    public R delete(@RequestBody Long[] driverids){
		tCarCardriverService.removeByIds(Arrays.asList(driverids));

        return R.ok();
    }

}
