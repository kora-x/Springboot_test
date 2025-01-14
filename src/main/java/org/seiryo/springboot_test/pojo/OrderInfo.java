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
public class OrderInfo {
    //订单详细id
    private Integer orderInfoId;

    //订单id
    private Integer orderId;

    //购票位置
    private Integer orderWz;

    //订单状态
    private Integer orderS;

    //订单日期
    private String orderDate;
}
