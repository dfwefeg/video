package com.martinwj.dao.field;

import com.martinwj.entity.Field;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ClassName: IFieldDAO
 * @Description: TODO
 * @author: martin-wj
 * @createDate: 2020-12-25
 */
@Repository
public interface IFieldDAO {

    /**
     * 查询字段列表
     */
    List<Field> list();

    /**
     * 查询分类下的字段列表
     * @param typeId 分类信息主键
     * @return
     */
    List<Field> listByTypeId(@Param("typeId") String typeId);

    /**
     * 根据主键查询字段信息
     * @param id 字段主键
     * @return
     */
    Field selectById(String id);

    /**
     * 更新字段
     */
    int update(Field field);
}
