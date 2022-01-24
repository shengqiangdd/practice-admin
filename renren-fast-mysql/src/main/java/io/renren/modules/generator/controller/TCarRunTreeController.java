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

import io.renren.modules.generator.entity.TCarRunTreeEntity;
import io.renren.modules.generator.service.TCarRunTreeService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;

/**
 * 
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2022-01-21 16:24:01
 */
@RestController
@RequestMapping("generator/tcarruntree")
public class TCarRunTreeController {
    @Autowired
    private TCarRunTreeService tCarRunTreeService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarruntree:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tCarRunTreeService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{treeId}")
    @RequiresPermissions("generator:tcarruntree:info")
    public R info(@PathVariable("treeId") Integer treeId){
		TCarRunTreeEntity tCarRunTree = tCarRunTreeService.getById(treeId);

        return R.ok().put("tCarRunTree", tCarRunTree);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarruntree:save")
    public R save(@RequestBody TCarRunTreeEntity tCarRunTree){
		tCarRunTreeService.save(tCarRunTree);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarruntree:update")
    public R update(@RequestBody TCarRunTreeEntity tCarRunTree){
		tCarRunTreeService.updateById(tCarRunTree);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarruntree:delete")
    public R delete(@RequestBody Integer[] treeIds){
		tCarRunTreeService.removeByIds(Arrays.asList(treeIds));

        return R.ok();
    }

}
