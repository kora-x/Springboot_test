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
 * @Date 2025/1/14 10:34
 **/
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LogInfo {
    //日志编号
    Integer logId;

    //日志信息
    String logInfo;

    //操作时间
    String logDate;

    //操作人
    String logName;
}
