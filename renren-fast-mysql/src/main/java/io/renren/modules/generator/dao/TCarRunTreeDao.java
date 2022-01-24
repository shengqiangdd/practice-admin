package io.renren.modules.generator.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.generator.entity.TCarRunTreeEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TCarRunTreeDao extends BaseMapper<TCarRunTreeEntity> {
    List<TCarRunTreeEntity> selectAllTree();
}
