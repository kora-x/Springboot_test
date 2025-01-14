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
 * @Date 2025/1/14 10:33
 **/
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class DyInfo {
    //电影编号
    private Integer dyId;

    //电影名称
    private String dyName;

    //电影上架时间
    private String dySy;

    //电影价格
    private Integer dyMoney;

    //电影观影时间
    private String dyDate;

    //电影状态
    private Integer dyS;

    //电影座位数
    private Integer dyZw;
}
