package io.renren.modules.generator.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
@TableName(value = "t_car_run_tree")
public class TCarRunTreeEntity {
    private static final long serialVersionUID = 1L;

    @TableId
    private Long treeId;

    private Long parentId;

    private String label;

    private Long orderNum;

    @TableField(exist = false)
    private List<TCarRunTreeEntity> children = new ArrayList<>();
}
