package com.martinwj.dao.nav;

import com.martinwj.entity.Nav;

import java.util.List;

/**
 * @ClassName: INavDAO
 * @Description: TODO
 * @author: martin-wj
 * @createDate: 2020-12-18
 */
public interface INavDAO {
    /**
     * 可用导航列表
     * @return
     */
    List<Nav> listIsUse();
}
