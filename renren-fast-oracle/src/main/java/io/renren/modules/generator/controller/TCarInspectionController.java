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

import io.renren.modules.generator.entity.TCarInspectionEntity;
import io.renren.modules.generator.service.TCarInspectionService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 年检记录
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@RestController
@RequestMapping("generator/tcarinspection")
public class TCarInspectionController {
    @Autowired
    private TCarInspectionService tCarInspectionService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarinspection:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tCarInspectionService.selectTCarByCondition(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:tcarinspection:info")
    public R info(@PathVariable("id") Long id){
		TCarInspectionEntity tCarInspection = tCarInspectionService.getById(id);
        String[] date = tCarInspection.getExpiredate().split("\\.");
        tCarInspection.setExpiredate(date[0]);
        return R.ok().put("tCarInspection", tCarInspection);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarinspection:save")
    public R save(@RequestBody TCarInspectionEntity tCarInspection){
		tCarInspectionService.save(tCarInspection);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarinspection:update")
    public R update(@RequestBody TCarInspectionEntity tCarInspection){
		tCarInspectionService.updateById(tCarInspection);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarinspection:delete")
    public R delete(@RequestBody Long[] ids){
		tCarInspectionService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
