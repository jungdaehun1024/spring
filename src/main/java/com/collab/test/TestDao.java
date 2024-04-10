package com.collab.test;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TestDao {

    @Autowired
    private SqlSession sqlSession;

    public List<String> getList() throws Exception {
        List<String> result = sqlSession.selectList("main.getList");
        return result;
    }
}
