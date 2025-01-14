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
 * @Date 2025/1/14 09:11
 **/
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class MyUser {
    //用户ID
    private Integer USER_ID;

    //用户名
    private String USER_NAME;

    //用户密码
    private String USER_PASS;
}
