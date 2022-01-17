package io.renren.modules.generator.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.alibaba.druid.util.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.modules.generator.entity.TCarRunTypeTree;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.generator.entity.TCarRunEntity;
import io.renren.modules.generator.service.TCarRunService;
import io.renren.common.utils.PageUtils;
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

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarrun:list")
    public R list(@RequestParam Map<String, Object> params,
                  TCarRunEntity tCarRun){
        Page<TCarRunEntity> page = tCarRunService.selectTCarByCondition(tCarRun, params);

        return R.ok().put("page", page);
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
		if (tCarRun != null &&!StringUtils.isEmpty(tCarRun.getBegintime())
                && !StringUtils.isEmpty(tCarRun.getEndtime())) {
            String[] begin = tCarRun.getBegintime().split("\\.");
            String[] end = tCarRun.getEndtime().split("\\.");
            tCarRun.setBegintime(begin[0]);
            tCarRun.setEndtime(end[0]);
        }
        return R.ok().put("tCarRun", tCarRun);
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
