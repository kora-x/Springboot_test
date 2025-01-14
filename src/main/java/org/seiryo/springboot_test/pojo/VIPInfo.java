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
 * @Date 2025/1/14 10:38
 **/
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class VIPInfo {
    //VIP编号
    private Integer vipId;

    //VIP积分
    private Integer vipJf;

    //VIP等级
    private String vipName;

    //VIP折扣
    private double vipZk;
}
