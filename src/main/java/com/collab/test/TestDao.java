package com.collab.test;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class TestDao {

    @Autowired
    private SqlSession sqlSession;
    @Autowired
    private SqlSessionFactoryBean sqlSessionFactory;



    public List<String> getList()throws Exception{
        SqlSession session = sqlSessionFactory.getObject().openSession();
         List<String> result = session.selectList("main.getList");
        return result;
    }
}
