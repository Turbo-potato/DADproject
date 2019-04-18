package com.myspring.controllers;
import com.myspring.beans.ReserveBean;
import com.myspring.beans.RoomBean;
import com.myspring.beans.TimeBean;
import com.myspring.beans.UserBean;
import com.myspring.entities.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.codec.digest.DigestUtils;
import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Controller public class MainController {

    @Autowired
    UserBean userBean;

    @Autowired
    RoomBean roomBean;

    @Autowired
    ReserveBean reserveBean;

    @Autowired
    TimeBean timeBean;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public ModelAndView indexPage(@RequestParam("id") Long user_id){
        ModelAndView mw = new ModelAndView("index");
        Users users = userBean.getUserById(user_id);
        //System.out.println(users.getNickname());
        mw.addObject("users",users);
        return mw;
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

    @RequestMapping(value = "/index1", method = RequestMethod.GET)
    public ModelAndView index1(HttpSession session){
        ModelAndView mw = new ModelAndView("index1");
        return mw;
    }

    @RequestMapping(value = "/room", method = RequestMethod.GET)
    public ModelAndView roomPage(@RequestParam(name = "id") Long id){
        Rooms room = roomBean.getRoomById(id);
        ModelAndView mw = new ModelAndView("room");
        mw.addObject("room",room);
        return mw;
    }

    @RequestMapping(value = "/library", method = RequestMethod.GET)
    public ModelAndView libraryPage(@RequestParam(name = "id") Long id){
        ModelAndView mw = new ModelAndView("library");
        Users users = userBean.getUserById(id);
        List<Reserves> reserves = reserveBean.getAllReserves();
        mw.addObject("users",users);
        mw.addObject("reserves",reserves);
        List<Times> times = timeBean.getAllTimes();
        mw.addObject("times",times);
        return mw;
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPage(HttpSession session){
        ModelAndView mw = new ModelAndView("admin");
        return mw;
    }

    @RequestMapping(value = "/reserve", method = RequestMethod.POST)
    public String reserveRoom(@RequestParam(name = "time_id") Long time_id,
                              @RequestParam(name = "user_id") Long user_id,
                              @RequestParam(name = "title") String title){
        Users users = userBean.getUserById(user_id);
        reserveBean.addReserve(new Reserves(users,new Long(1),time_id,"Y"));
        return "redirect:/library?id=" + user_id;
    }

    @RequestMapping(value = "/dereserve",method = RequestMethod.POST)
    public String DereserveRoom(@RequestParam("reserve_id") Long reserve_id,@RequestParam("user_id") Long user_id)
    {
        Users users = userBean.getUserById(user_id);
        reserveBean.deleteReserve(new Reserves(reserve_id,new Long(1),new Long(1)));
        return "redirect:/library?id=" + user_id;
    }

    @RequestMapping(value = "/editRoom", method = RequestMethod.POST)
    public ModelAndView editRoom(@RequestParam(name = "name") String name,
                                 @RequestParam(name = "seats") String seats,
                                 @RequestParam(name = "floor") String floor,
                                 @RequestParam(name = "id") Long id){
        Rooms room = roomBean.getRoomById(id);
        //Or find by name
        //Rooms room = roomBean.getRoomByName(name);
       // room.setTime(time);
        room.setFloor(floor);
        room.setName(name);
        room.setSeats(seats);
        roomBean.updateRoom(room);
        return new ModelAndView("redirect:/room?id=" + room.getId());
    }

    @RequestMapping(value = "/auth", method = RequestMethod.POST)
    public String viewMain(@RequestParam(name = "login") String login, @RequestParam(name = "password") String password, HttpSession session){
        Users user = userBean.getUserByLoginAndPassword(login,password);
        //Users user = getUserData();
        if (user != null) {
            session.setAttribute("sessionUser", user);
            if(user.getLogin().equals("admin") && user.getPassword().equals("d033e22ae348aeb5660fc2140aec35850c4da997")){
                return "redirect:/admin";
            }
            else {
                return "redirect:/index?id="+user.getId();
            }
        }
        else{
            System.out.println("DEBUG: USER IS NULL!");
        }
      //  return new ModelAndView("redirect:/login");
        return "redirect:/login";
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