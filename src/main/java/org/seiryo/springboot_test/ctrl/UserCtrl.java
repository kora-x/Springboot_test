package org.seiryo.springboot_test.ctrl;

import org.seiryo.springboot_test.pojo.MyUser;
import org.seiryo.springboot_test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.function.ServerResponse;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * TODO
 *
 * @PackageName org.seiryo.springboot_test.ctrl
 * @Description
 * @Author USER
 * @Date 2025/1/14 09:19
 **/
@RestController
@RequestMapping("/userCtrl")
public class UserCtrl {
    @Autowired
    UserService userService;

    /**
     * TODO
     * @Description 用户登录
     * @Param USERNAME
     * @Param USERPASS
     * @Param session
     * @Return org.springframework.web.servlet.function.ServerResponse
     * @Author USER
     * @Date 2025/1/14 09:44
     **/
    @RequestMapping("/login")
    @ResponseBody
    public ServerResponse login(String USERNAME, String USERPASS, HttpSession session) {
        MyUser user = userService.login(new MyUser(null, USERNAME, USERPASS));
        if (user != null) {
            session.setAttribute("user", user);
            return ServerResponse.ok().body(user);
        }
        return ServerResponse.notFound().build();
    }
    @RequestMapping("/indexView")
    public ModelAndView indexView(ModelAndView modelAndView, HttpSession session) {
        MyUser user = (MyUser) session.getAttribute("user");
        modelAndView.addObject("user", user);
        modelAndView.setViewName("index");
        return modelAndView;
    }

    /**
     * TODO
     * @Description 用户注册
     * @Param USERNAME
     * @Param USERPASS
     * @Param session
     * @Return org.springframework.web.servlet.function.ServerResponse
     * @Author USER
     * @Date 2025/1/14 09:44
     **/
    @RequestMapping("/register")
    @ResponseBody
    public ServerResponse register(String USERNAME, String USERPASS) {
        boolean flag = userService.register(new MyUser(null, USERNAME, USERPASS));
        if (flag) {
            return ServerResponse.ok().build();
        }
        return ServerResponse.notFound().build();
    }
}
