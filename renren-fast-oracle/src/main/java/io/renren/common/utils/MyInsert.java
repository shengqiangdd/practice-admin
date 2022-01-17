package io.renren.common.utils;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.core.enums.SqlMethod;
import com.baomidou.mybatisplus.core.injector.methods.Insert;
import com.baomidou.mybatisplus.core.metadata.TableFieldInfo;
import com.baomidou.mybatisplus.core.metadata.TableInfo;
import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.core.toolkit.sql.SqlScriptUtils;
import org.apache.ibatis.executor.keygen.Jdbc3KeyGenerator;
import org.apache.ibatis.executor.keygen.KeyGenerator;
import org.apache.ibatis.executor.keygen.NoKeyGenerator;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.type.JdbcType;

import java.util.Date;
import java.util.List;

public class MyInsert extends Insert {
    @Override
    public MappedStatement injectMappedStatement(Class<?> mapperClass, Class<?> modelClass, TableInfo tableInfo) {
        KeyGenerator keyGenerator = new NoKeyGenerator();
        SqlMethod sqlMethod = SqlMethod.INSERT_ONE;
        String columnScript = SqlScriptUtils.convertTrim(tableInfo
                        .getAllInsertSqlColumnMaybeIf((String) null),
                "(", ")", (String) null, ",");
        String valuesScript = SqlScriptUtils.convertTrim(tableInfo
                        .getAllInsertSqlPropertyMaybeIf((String) null),
                "(", ")", (String) null, ",");
        String keyProperty = null;
        String keyColumn = null;
        // region 自定义内容，其他皆为源码 com.baomidou.mybatisplus.core.injector.methods.Insert.injectMappedStatement
        List<TableFieldInfo> tableFieldInfoList = tableInfo.getFieldList();
        for (TableFieldInfo tableFieldInfo : tableFieldInfoList) {
            JdbcType jdbcType = tableFieldInfo.getJdbcType();
            String update = tableFieldInfo.getUpdate();
            if (jdbcType != null && jdbcType.equals(JdbcType.DATE) && tableFieldInfo.getPropertyType().isAssignableFrom(String.class)
                    && update.toLowerCase().contains("to_date(")) {
                valuesScript = valuesScript.replace("#{" + tableFieldInfo.getProperty()
                        + ",jdbcType=" + jdbcType + "}", update.replaceAll("#\\{et\\..*}",
                        "#{" + tableFieldInfo.getProperty() + "}"));
            }
        }
        // endregion
        if (StringUtils.isNotBlank(tableInfo.getKeyProperty())) {
            if (tableInfo.getIdType() == IdType.AUTO) {
                keyGenerator = new Jdbc3KeyGenerator();
                keyProperty = tableInfo.getKeyProperty();
                keyColumn = tableInfo.getKeyColumn();
            } else if (null != tableInfo.getKeySequence()) {
                keyGenerator = TableInfoHelper.genKeyGenerator(this.getMethod(sqlMethod), tableInfo, this.builderAssistant);
                keyProperty = tableInfo.getKeyProperty();
                keyColumn = tableInfo.getKeyColumn();
            }
        }
        String sql = String.format(sqlMethod.getSql(), tableInfo.getTableName(), columnScript, valuesScript);
        SqlSource sqlSource = this.languageDriver.createSqlSource(this.configuration, sql, modelClass);
        return this.addInsertMappedStatement(mapperClass, modelClass, this.getMethod(sqlMethod), sqlSource, (KeyGenerator) keyGenerator, keyProperty, keyColumn);
    }
}
