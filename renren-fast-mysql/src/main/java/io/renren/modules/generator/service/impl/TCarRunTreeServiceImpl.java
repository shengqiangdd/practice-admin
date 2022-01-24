package io.renren.modules.generator.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.modules.generator.dao.TCarDeptDao;
import io.renren.modules.generator.dao.TCarRunTreeDao;
import io.renren.modules.generator.entity.TCarDeptEntity;
import io.renren.modules.generator.entity.TCarRunTreeEntity;
import io.renren.modules.generator.service.TCarDeptService;
import io.renren.modules.generator.service.TCarRunTreeService;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;


@Service("tCarRunTreeService")
public class TCarRunTreeServiceImpl extends ServiceImpl<TCarRunTreeDao, TCarRunTreeEntity> implements TCarRunTreeService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TCarRunTreeEntity> page = this.page(
                new Query<TCarRunTreeEntity>().getPage(params),
                new QueryWrapper<TCarRunTreeEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public List<TCarRunTreeEntity> selectAllTree() {
        return this.getBaseMapper().selectAllTree();
    }

    /**
     * 查询父节点和子节点
     * @return
     */
    @Override
    public List<TCarRunTreeEntity> selectDeptAndChildren() {
        List<TCarRunTreeEntity> entityList = this.baseMapper.selectAllTree();

        if (entityList == null || entityList.size() <= 0) {
            return null;
        }

        LinkedList<TCarRunTreeEntity> linkedList = new LinkedList<>();

        entityList.forEach(data -> {
            if (data.getParentId() == 0L) {
                linkedList.add(data);
            }
        });

        linkedList.forEach(data -> {
            data.setChildren(getChildren(data.getTreeId(),entityList));
        });
        return linkedList;
    }

    /**
     * 递归获取子节点
     * @param parentId
     * @param treeList
     * @return
     */
    List<TCarRunTreeEntity> getChildren(Long parentId,List<TCarRunTreeEntity> treeList) {
        // 孩子集合
        LinkedList<TCarRunTreeEntity> linkedList = new LinkedList<>();

        treeList.forEach(data -> {
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
            data.setChildren(getChildren(data.getTreeId(),treeList));
        });

        return linkedList;
    }
}