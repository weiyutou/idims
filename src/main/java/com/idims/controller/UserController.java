package com.idims.controller;
import com.idims.domain.User;
import com.idims.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
/**
 * 用户登录和注销Controller
 */
@Controller
public class UserController {
    @RequestMapping("/main")
    public String  toMainPage(){
        return "404";
    }
    //注入userService
    @Autowired
    private UserService userService;

    /*登录*/
    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request){
        try {
            User u = userService.login(user);
            if(u!=null){
                request.getSession().setAttribute("USER_SESSION",u);
                return "redirect:/pages/main.jsp";
            }
            request.setAttribute("msg","用户名或密码错误");
            return  "forward:/pages/login.jsp";
        }catch(Exception e){
            e.printStackTrace();
            request.setAttribute("msg","系统错误");
            return  "forward:/pages/login.jsp";
        }
    }

    /*注销*/
    @RequestMapping("/logout")
    public String logout( HttpServletRequest request){
        try {
            HttpSession session = request.getSession();
            //销毁Session
            session.invalidate();
            return  "forward:/pages/login.jsp";
        }catch(Exception e){
            e.printStackTrace();
            request.setAttribute("msg","系统错误");
            return  "forward:/pages/login.jsp";
        }
    }

}
