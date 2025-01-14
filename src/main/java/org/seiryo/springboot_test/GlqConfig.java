package org.seiryo.springboot_test;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
public class GlqConfig extends WebMvcConfigurationSupport {

    //单例模式运行自定义(在配置过滤器之前 得先有一个自己的过滤器)
    @Bean
    public MyGlg init(){
        return new MyGlg();
    }

    //WebMvcConfigurationSupport 属于WEB/MVC的专属过滤器
    //配置过滤器路径
    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(init()).
                addPathPatterns("/**").
                excludePathPatterns("/static/**").
                excludePathPatterns("/templates/**");
    }

    //配置静态资源映射路径
    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").
                addResourceLocations("classpath:/static/").
                addResourceLocations("classpath:/templates/");
    }
}
