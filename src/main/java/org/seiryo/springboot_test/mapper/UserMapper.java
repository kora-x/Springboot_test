package org.seiryo.springboot_test.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.seiryo.springboot_test.pojo.MyUser;

import java.util.List;

/**
 * TODO
 *
 * @PackageName org.seiryo.springboot_l2.mapper
 * @Description 用户连接数据库接口
 * @Author USER
 * @Date 2025/1/9 01:29
 **/
@Mapper
public interface UserMapper {

    //动态查询用户数据
    List<MyUser> userList(MyUser myuser);

    //注册用户
    boolean insertUser(MyUser myuser);

}
