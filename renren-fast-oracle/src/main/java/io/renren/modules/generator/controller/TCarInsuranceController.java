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

import io.renren.modules.generator.entity.TCarInsuranceEntity;
import io.renren.modules.generator.service.TCarInsuranceService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 保险记录
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2021-12-09 08:17:43
 */
@RestController
@RequestMapping("generator/tcarinsurance")
public class TCarInsuranceController {
    @Autowired
    private TCarInsuranceService tCarInsuranceService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("generator:tcarinsurance:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tCarInsuranceService.selectTCarByCondition(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("generator:tcarinsurance:info")
    public R info(@PathVariable("id") Long id){
		TCarInsuranceEntity tCarInsurance = tCarInsuranceService.getById(id);
        String[] date = tCarInsurance.getExpiredate().split("\\.");
        tCarInsurance.setExpiredate(date[0]);
        return R.ok().put("tCarInsurance", tCarInsurance);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("generator:tcarinsurance:save")
    public R save(@RequestBody TCarInsuranceEntity tCarInsurance){
		tCarInsuranceService.save(tCarInsurance);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("generator:tcarinsurance:update")
    public R update(@RequestBody TCarInsuranceEntity tCarInsurance){
		tCarInsuranceService.updateById(tCarInsurance);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("generator:tcarinsurance:delete")
    public R delete(@RequestBody Long[] ids){
		tCarInsuranceService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
