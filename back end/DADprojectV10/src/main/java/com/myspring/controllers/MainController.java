package com.myspring.controllers;
import com.myspring.beans.UserBean;
import com.myspring.entities.Roles;
import com.myspring.entities.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.codec.digest.DigestUtils;
import javax.servlet.http.HttpSession;

@Controller public class MainController {

    @Autowired
    UserBean userBean;

    @RequestMapping(value = {"index"})
    public ModelAndView indexPage(){
        return new ModelAndView("index");
    }

    @RequestMapping(value = {"/","/login"}, method = RequestMethod.GET)
    public ModelAndView login(HttpSession session){
        ModelAndView mw = new ModelAndView("login");
        return mw;
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public ModelAndView signUp(HttpSession session){
        ModelAndView mw = new ModelAndView("signUp");
        return mw;
    }

    @RequestMapping(value = "/auth", method = RequestMethod.POST)
    public ModelAndView viewMain(@RequestParam(name = "login") String login, @RequestParam(name = "password") String password, HttpSession session){
        Users user = userBean.getUserByLoginAndPassword(login,password);
        //Users user = getUserData();
        if (user != null) {
            session.setAttribute("sessionUser", user);
            if(user.getLogin().equals("admin") && user.getPassword().equals("d033e22ae348aeb5660fc2140aec35850c4da997")){
                ModelAndView mw = new ModelAndView("admin");
                mw.addObject("user",user);
                return mw;
            }
            else {
                ModelAndView mw = new ModelAndView("profile");
                mw.addObject("user", user);
                return mw;
            }
        }
        else{
            System.out.println("DEBUG: USER IS NULL!");
        }
        return new ModelAndView("redirect:/login");
    }

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public ModelAndView register(HttpSession session,@RequestParam(name = "login") String login,
                                 @RequestParam(name = "password") String password, @RequestParam(name = "nickname") String nickname){
        password = DigestUtils.sha1Hex(password);
        //maybe better to create a role bean?
        Roles role = new Roles(2L,"ROLE_USER");
        Users user = new Users(null,login,password,nickname);
        //add role to roles list of user
        user.getRoles().add(role);
        userBean.addUser(user);
        return new ModelAndView("redirect:/login");
    }
}