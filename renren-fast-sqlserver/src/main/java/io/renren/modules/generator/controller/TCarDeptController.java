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

import io.renren.modules.generator.entity.TCarDeptEntity;
import io.renren.modules.generator.service.TCarDeptService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 部门表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:37:11
 */
@RestController
@RequestMapping("generator/tcardept")
public class TCarDeptController {
    @Autowired
    private TCarDeptService tCarDeptService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcardept:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tCarDeptService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{deptid}")
    @RequiresPermissions("generator:tcardept:info")
    public R info(@PathVariable("deptid") Long deptid){
		TCarDeptEntity tCarDept = tCarDeptService.getById(deptid);

        return R.ok().put("tCarDept", tCarDept);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcardept:save")
    public R save(@RequestBody TCarDeptEntity tCarDept){
		tCarDeptService.save(tCarDept);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcardept:update")
    public R update(@RequestBody TCarDeptEntity tCarDept){
		tCarDeptService.updateById(tCarDept);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcardept:delete")
    public R delete(@RequestBody Long[] deptids){
		tCarDeptService.removeByIds(Arrays.asList(deptids));

        return R.ok();
    }

}
