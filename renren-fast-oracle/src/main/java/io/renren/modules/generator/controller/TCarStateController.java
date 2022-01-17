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

import io.renren.modules.generator.entity.TCarStateEntity;
import io.renren.modules.generator.service.TCarStateService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-08 10:37:11
 */
@RestController
@RequestMapping("generator/tcarstate")
public class TCarStateController {
    @Autowired
    private TCarStateService tCarStateService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarstate:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tCarStateService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:tcarstate:info")
    public R info(@PathVariable("id") Long id){
		TCarStateEntity tCarState = tCarStateService.getById(id);

        return R.ok().put("tCarState", tCarState);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarstate:save")
    public R save(@RequestBody TCarStateEntity tCarState){
		tCarStateService.save(tCarState);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarstate:update")
    public R update(@RequestBody TCarStateEntity tCarState){
		tCarStateService.updateById(tCarState);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarstate:delete")
    public R delete(@RequestBody Long[] ids){
		tCarStateService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
