package com.martinwj.dao.type;

import com.martinwj.entity.Type;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ClassName: ITypeDAO
 * @Description: TODO
 * @author: martin-wj
 * @createDate: 2020-12-23
 */
@Repository
public interface ITypeDAO {

    /**
     * 查询分类列表
     */
    List<Type> list();
}
