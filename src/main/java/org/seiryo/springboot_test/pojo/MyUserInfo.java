package org.seiryo.springboot_test.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * TODO
 *
 * @PackageName org.seiryo.springboot_test.pojo
 * @Description
 * @Author USER
 * @Date 2025/1/14 09:17
 **/
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class MyUserInfo {
    //用户信息id
    private Integer USER_INFO_ID;

    //用户id
    private Integer USER_ID;

    //用户余额
    private Integer USER_MONEY;

    //用户积分
    private Integer USER_JF;

    //用户VIP等级
    private String USER_VIP;

    //用户手机号
    private String USER_PHONE;

    //用户状态
    private Integer USER_S;
}
