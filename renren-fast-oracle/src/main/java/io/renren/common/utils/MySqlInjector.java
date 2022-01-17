package io.renren.common.utils;

import com.baomidou.mybatisplus.core.injector.AbstractMethod;
import com.baomidou.mybatisplus.core.injector.DefaultSqlInjector;
import com.baomidou.mybatisplus.core.injector.methods.Insert;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 自定义 SQL 注入器，用于新增通用方法
 */
@Component
public class MySqlInjector extends DefaultSqlInjector {

    @Override
    public List<AbstractMethod> getMethodList(Class<?> mapperClass) {
        List<AbstractMethod> methodList = super.getMethodList(mapperClass);
        //替换insert通用方法
        for (int i = 0; i < methodList.size(); i++) {
            if (methodList.get(i) instanceof Insert) {
                methodList.set(i,new MyInsert());
                break;
            }
        }
        return methodList;
    }
}
