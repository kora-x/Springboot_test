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
 * @Date 2025/1/14 10:37
 **/
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    //订单id
    private Integer orderId;

    //电影id
    private Integer orderDyId;

    //用户id
    private Integer orderUserId;
}
