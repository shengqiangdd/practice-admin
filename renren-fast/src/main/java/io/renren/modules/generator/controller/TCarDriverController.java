package io.renren.modules.generator.controller;

import java.util.Arrays;
import java.util.Map;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.generator.entity.TCarDriverEntity;
import io.renren.modules.generator.service.TCarDriverService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 司机表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@RestController
@RequestMapping("generator/tcardriver")
public class TCarDriverController {
    @Autowired
    private TCarDriverService tCarDriverService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcardriver:list")
    public R list(@RequestParam Map<String, Object> params){
        Page<TCarDriverEntity> page = tCarDriverService.selectTCarByCondition(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:tcardriver:info")
    public R info(@PathVariable("id") Long id){
		TCarDriverEntity tCarDriver = tCarDriverService.getById(id);

        return R.ok().put("tCarDriver", tCarDriver);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcardriver:save")
    public R save(@RequestBody TCarDriverEntity tCarDriver){
		tCarDriverService.save(tCarDriver);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcardriver:update")
    public R update(@RequestBody TCarDriverEntity tCarDriver){
		tCarDriverService.updateById(tCarDriver);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcardriver:delete")
    public R delete(@RequestBody Long[] ids){
		tCarDriverService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
