package com.fwtai.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**dao底层操作处理工具类*/
@Repository
public class DaoBase {
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

    /**查询返回List《HashMap<String,Object>》-ok*/
    public List<HashMap<String,Object>> queryForListHashMap(final String sqlMapId, final Object objParam) throws Exception {
        return sqlSession.selectList(sqlMapId,objParam);
    }
}