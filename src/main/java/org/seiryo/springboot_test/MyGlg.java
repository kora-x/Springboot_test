package org.seiryo.springboot_test;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 自定义过滤器
 */
public class MyGlg implements HandlerInterceptor {

    /**
     * 描述过滤器
     * 过滤波的作用：保证数据的安全性，通行，阻止
     * 1、判断数据内容是否符合我们的数据规范，通行 阻止
     * 2、商城系统进行遍历数据时的过程
     * 2.1、登录界面 - （AJAX） 获取数据 - 后台 - 数据库验证 - 登录成功 - 获取数据库内容（设置数据SESSION） - 返回到AJAX - 跳转界面
     * 2.2、登录界面 - （AJAX） 获取数据 - 过滤器（验证数据安全性） - 后台 - 数据库验证 - 登录成功 - 获取数据库内容 （设置数据SESSION） - 返回到AJAX - 跳转界面
     * 3、过滤器的运行结构
     * 3.1、实现系统过滤器 HandlerInterceptor，implements 接口实现 来自于 org.springframework
     * 3.2、实现拦截 preHandle
     * 3.3、拦截器中是可以使用 SESSION
     * 3.4、创建自定义拦截器 并继承系统拦截器  WebMvcConfigurationSupport  来自于 org.springframework
     * 3.5、添加拦截器注解 @Configuration
     * 3.6、初始化拦截器 @Bean 进行初始化
     * 3.6、配置拦截器路径
     * 3.7、配置静态资源映射
     */

    /**
     * 设置拦截器
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        try {
//            int a = 1/2;
//        }catch (Exception e){
//            //不通过
//            return false;
////            response.encodeRedirectURL("/demoCtrl/404");
//        }
        //通过
        return true;
    }
}
