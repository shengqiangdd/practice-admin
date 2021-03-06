package io.renren.modules.generator.service.impl;

import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.generator.dao.TCarDeptDao;
import io.renren.modules.generator.entity.TCarDeptEntity;
import io.renren.modules.generator.service.TCarDeptService;


@Service("tCarDeptService")
public class TCarDeptServiceImpl extends ServiceImpl<TCarDeptDao, TCarDeptEntity> implements TCarDeptService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarDeptEntity> page = this.page(
                new Query<TCarDeptEntity>().getPage(params),
                new QueryWrapper<TCarDeptEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public List<TCarDeptEntity> selectAllDept() {
        return this.getBaseMapper().selectAllDept();
    }

    /**
     * 查询父节点和子节点
     * @return
     */
    @Override
    public List<TCarDeptEntity> selectDeptAndChildren() {
        List<TCarDeptEntity> entityList = this.baseMapper.selectAllDept();

        if (entityList == null || entityList.size() <= 0) {
            return null;
        }

        LinkedList<TCarDeptEntity> linkedList = new LinkedList<>();

        entityList.forEach(data -> {
            if (data.getParentId() == 0L) {
                linkedList.add(data);
            }
        });

        linkedList.forEach(data -> {
            data.setChildren(getChildren(data.getDeptid(),entityList));
        });
        return linkedList;
    }

    @Override
    public List<TCarDeptEntity> selectAllUseCarPeople() {
        return this.baseMapper.selectAllUseCarPeople();
    }

    /**
     * 递归获取子节点
     * @param parentId
     * @param deptList
     * @return
     */
    List<TCarDeptEntity> getChildren(Long parentId,List<TCarDeptEntity> deptList) {
        // 孩子集合
        LinkedList<TCarDeptEntity> linkedList = new LinkedList<>();

        deptList.forEach(data -> {
            if (parentId.equals(data.getParentId())) {
                linkedList.add(data);
            }
        });
        // 退出递归条件
        if (linkedList.size() <= 0) {
            return null;
        }

        // 把子节点的子节点再循环递归一遍
        linkedList.forEach(data -> {
            data.setChildren(getChildren(data.getDeptid(),deptList));
        });

        return linkedList;
    }

}