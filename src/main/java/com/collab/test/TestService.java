package com.collab.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TestService {

    @Autowired
    private TestDao testDao;

    public List<String> getList() throws Exception {
        return testDao.getList();
    }

}
