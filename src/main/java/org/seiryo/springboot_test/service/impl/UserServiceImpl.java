package org.seiryo.springboot_test.service.impl;

import org.seiryo.springboot_test.mapper.UserMapper;
import org.seiryo.springboot_test.pojo.MyUser;
import org.seiryo.springboot_test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

/**
 * TODO
 *
 * @PackageName org.seiryo.springboot_xm1.service.impl
 * @Description
 * @Author USER
 * @Date 2025/1/13 07:15
 **/
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    /**
     * TODO
     * @Description 查询所有用户信息
     * @Param myuser
     * @Return java.util.List<org.seiryo.springboot_xm1.pojo.MyUser>
     * @Author USER
     * @Date 2025/1/13 07:25
     **/
    @Override
    public List<MyUser> userList(MyUser myuser) {
        return userMapper.userList(myuser);
    }

    /**
     * TODO
     * @Description 用户登录
     * @Param myuser
     * @Return boolean
     * @Author USER
     * @Date 2025/1/13 07:26
     **/
    @Override
    public MyUser login(MyUser myuser) {
        List<MyUser> list = userList(new MyUser(null,null,null));
        for (MyUser user : list) {
            if (user.getUSER_NAME().equals(myuser.getUSER_NAME())) {
                if (user.getUSER_PASS().equals(myuser.getUSER_PASS())) {
                    return user;
                }
            }
        }
        return null;
    }

    /**
     * TODO
     * @Description 用户注册
     * @Param myuser
     * @Return org.seiryo.springboot_test.pojo.MyUser
     * @Author USER
     * @Date 2025/1/14 10:42
     **/
    @Override
    public boolean register(MyUser myuser) {
        return userMapper.insertUser(myuser);
    }
}
