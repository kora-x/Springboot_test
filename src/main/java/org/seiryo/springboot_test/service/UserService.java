package org.seiryo.springboot_test.service;

import org.seiryo.springboot_test.pojo.MyUser;

import java.util.List;

/**
 * TODO
 *
 * @PackageName org.seiryo.springboot_test.service
 * @Description
 * @Author USER
 * @Date 2025/1/14 09:22
 **/
public interface UserService {

    //动态查询用户数据
    List<MyUser> userList(MyUser myuser);
    //用户登录
    MyUser login(MyUser myuser);
    //用户注册
    boolean register(MyUser myuser);
}
