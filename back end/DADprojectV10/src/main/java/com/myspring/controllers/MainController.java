package com.myspring.controllers;
import com.myspring.beans.ReserveBean;
import com.myspring.beans.RoomBean;
import com.myspring.beans.TimeBean;
import com.myspring.beans.UserBean;
import com.myspring.entities.Reserves;
import com.myspring.entities.Roles;
import com.myspring.entities.Rooms;
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

    @Autowired
    RoomBean roomBean;

    @Autowired
    ReserveBean reserveBean;

    @Autowired
    TimeBean timeBean;

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
        Rooms room = roomBean.getRoomById(id);
        ModelAndView mw = new ModelAndView("library");
        mw.addObject("room",room);
        return mw;
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPage(HttpSession session){
        ModelAndView mw = new ModelAndView("admin");
        return mw;
    }

    @RequestMapping(value = "/reserve", method = RequestMethod.POST)
    public ModelAndView reserveRoom(@RequestParam(name = "room_id") Long room_id,
                                    @RequestParam(name = "time_id") Long time_id){
        reserveBean.addReserve(new Reserves(null,room_id,time_id));
        ModelAndView mw = new ModelAndView("library");
        return mw;
    }

    @RequestMapping(value = "/editRoom", method = RequestMethod.POST)
    public ModelAndView editRoom(@RequestParam(name = "name") String name,
                                 @RequestParam(name = "time") String time,
                                 @RequestParam(name = "seats") String seats,
                                 @RequestParam(name = "floor") String floor,
                                 @RequestParam(name = "id") Long id){
        Rooms room = roomBean.getRoomById(id);
        //Or find by name
        //Rooms room = roomBean.getRoomByName(name);
        room.setTime(time);
        room.setFloor(floor);
        room.setName(name);
        room.setSeats(seats);
        roomBean.updateRoom(room);
        return new ModelAndView("redirect:/room?id=" + room.getId());
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
                ModelAndView mw = new ModelAndView("library"); // library (was profile)
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