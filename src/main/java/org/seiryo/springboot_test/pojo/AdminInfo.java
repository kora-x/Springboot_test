package org.seiryo.springboot_test.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * TODO
 * @Description  管理员信息
 * @Author USER
 * @Date 2025/1/14 10:32
 **/
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class AdminInfo {

	//管理员编号
	Integer adminId;

	//管理员名称
	String adminName;

	//管理员权限
	Integer adminQx;

	//管理员状态
	Integer adminS;
}
