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

import io.renren.modules.generator.entity.TCarCarDeptEntity;
import io.renren.modules.generator.service.TCarCarDeptService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 车辆档案部门
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:34:27
 */
@RestController
@RequestMapping("generator/tcarcardept")
public class TCarCarDeptController {
    @Autowired
    private TCarCarDeptService tCarCarDeptService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarcardept:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tCarCarDeptService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{usecompany}")
    @RequiresPermissions("generator:tcarcardept:info")
    public R info(@PathVariable("usecompany") Long usecompany){
		TCarCarDeptEntity tCarCarDept = tCarCarDeptService.getById(usecompany);

        return R.ok().put("tCarCarDept", tCarCarDept);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarcardept:save")
    public R save(@RequestBody TCarCarDeptEntity tCarCarDept){
		tCarCarDeptService.save(tCarCarDept);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarcardept:update")
    public R update(@RequestBody TCarCarDeptEntity tCarCarDept){
		tCarCarDeptService.updateById(tCarCarDept);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarcardept:delete")
    public R delete(@RequestBody Long[] usecompanys){
		tCarCarDeptService.removeByIds(Arrays.asList(usecompanys));

        return R.ok();
    }

}
