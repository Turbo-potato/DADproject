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
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller public class MainController {

    private static final DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

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
        session.invalidate();
        ModelAndView mw = new ModelAndView("login");
        return mw;
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public ModelAndView signUp(HttpSession session){
        ModelAndView mw = new ModelAndView("signUp");
        return mw;
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public ModelAndView profilePage(HttpSession session){
        ModelAndView mw = new ModelAndView("profile");
        return mw;
    }

    @RequestMapping(value = "/profile1", method = RequestMethod.GET)
    public ModelAndView profilePageNew(HttpSession session){
        Users currentUser = (Users)session.getAttribute("sessionUser");
        ModelAndView mw = new ModelAndView("profile1");
        mw.addObject("sesUser", currentUser);
        return mw;
    }

    @RequestMapping(value = "/changeProfile", method = RequestMethod.POST)
    public ModelAndView changeProfile(HttpSession session,
                                      @RequestParam String login,
                                      @RequestParam String nickname,
                                      @RequestParam String password){
        Users currentUser = (Users)session.getAttribute("sessionUser");
        ModelAndView mw = new ModelAndView("profile1");
        Users user = userBean.getUserById(currentUser.getId());
        user.setLogin(login);
        user.setNickname(nickname);
        user.setPassword( DigestUtils.sha1Hex(password) );
        userBean.updateUser(user);
        mw.addObject("sesUser", currentUser);
        return mw;
    }

    @RequestMapping(value = "/index1", method = RequestMethod.GET)
    public ModelAndView index1(HttpSession session){
        ModelAndView mw = new ModelAndView("index1");
        return mw;
    }

    @RequestMapping(value = "/room", method = RequestMethod.GET)
    public ModelAndView roomPage(HttpSession session, @RequestParam(name = "id") Long id){
        Rooms room = roomBean.getRoomById(id);
        ModelAndView mw = new ModelAndView("room");
        mw.addObject("room",room);
        Users currentUser = (Users) session.getAttribute("sessionUser");
        mw.addObject("sesUser",currentUser);
        return mw;
    }

    @RequestMapping(value = "/library", method = RequestMethod.GET)
    public ModelAndView libraryPage(@RequestParam(name = "id") Long id,
                                    HttpSession session){
        Rooms room = roomBean.getRoomById(id);
        Users currentUser = (Users)session.getAttribute("sessionUser");
        ModelAndView mw = new ModelAndView("library");
        mw.addObject("room",room);
        mw.addObject("sesUser",currentUser);
        mw.addObject("times",timeBean.getAllTimes());
        mw.addObject("reserves",reserveBean.getAllReserves());
        return mw;
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPage(HttpSession session){
        ModelAndView mw = new ModelAndView("admin");
        Users user = (Users) session.getAttribute("sessionUser");
        mw.addObject("sesUser",user);
        mw.addObject("rooms",roomBean.getAllRooms());
        return mw;
    }

    @RequestMapping(value = "/reserve", method = RequestMethod.POST)
    public ModelAndView reserveRoom(@RequestParam(name = "room_id") Long room_id,
                                    @RequestParam(name = "user_id") Long user_id,
                                    @RequestParam(name = "time_id") Long time_id,
                                    @RequestParam(name = "start_time") String start_time,
                                    @RequestParam(name = "finish_time") String finish_time,
                                    @RequestParam(name = "status") boolean status){
        /*
        Rooms room = roomBean.getRoomById(room_id);
        room.getTimes().add(timeBean.getTimeById(time_id));
        roomBean.updateRoom(room);
        */

        //reserveBean.addReserve(new Reserves(null,room_id,time_id));
        Date date = new Date();
        System.out.println(sdf.format(date));
        String starting_time = sdf.format(date).toString() + " " +  start_time;
        String finishing_time = sdf.format(date).toString() + " " +  finish_time;

        Rooms room = roomBean.getRoomById(room_id);
        Reserves reserve = new Reserves(null,room_id,time_id, user_id, starting_time, finishing_time, status);
        reserve.setRoomName(room.getName());

        reserveBean.addReserve(reserve);

       // List<Reserves> reserves = reserveBean.getAllReserves();
       // ModelAndView mw = new ModelAndView("library");
      //  mw.addObject("room",room);
      //  return mw;
        return new ModelAndView("redirect:/library?id=" + room_id);
    }

    @RequestMapping(value = "/unreserve", method = RequestMethod.POST)
    public ModelAndView unreserveRoom(@RequestParam(name = "room_id") Long room_id,
                                    @RequestParam(name = "user_id") Long user_id,
                                    @RequestParam(name = "time_id") Long time_id,
                                    @RequestParam(name = "start_time") String start_time,
                                    @RequestParam(name = "finish_time") String finish_time,
                                    @RequestParam(name = "status") boolean status) {

        Date date = new Date();
        System.out.println(sdf.format(date));
        String starting_time = sdf.format(date).toString() + " " +  start_time;
        String finishing_time = sdf.format(date).toString() + " " +  finish_time;
        Reserves reserve = reserveBean.getSpecificReserve(new Reserves(null,room_id,time_id, user_id, starting_time, finishing_time, status));
        reserveBean.deleteReserve(reserve);
        return new ModelAndView("redirect:/library?id=" + room_id);
    }

    @RequestMapping(value = "/mySchedule", method = RequestMethod.GET)
    public ModelAndView mySchedule(HttpSession session, @RequestParam(name = "uid") Long user_id) {
        ArrayList<Reserves> allMyReserves = new ArrayList<Reserves>();
        List<Reserves> allReserves = reserveBean.getAllReserves();
        Rooms room = new Rooms();
        for(Reserves r: allReserves) {
            if( reserveBean.isMyReserveById(r.getId(), user_id) )
            room = roomBean.getRoomById(r.getRoom_id());
            r.setRoomName(room.getName());
            allMyReserves.add(r);
        }
        ModelAndView mw = new ModelAndView("mySchedule");
        mw.addObject("myReserves", allMyReserves);
        Users currentUser = (Users) session.getAttribute("sessionUser");
        mw.addObject("sesUser",currentUser);
        return mw;
    }


    @RequestMapping(value = "/editRoom", method = RequestMethod.POST)
    public ModelAndView editRoom(@RequestParam(name = "name") String name,
                                 @RequestParam(name = "seats") String seats,
                                 @RequestParam(name = "floor") String floor,
                                 @RequestParam(name = "id") Long id){
        Rooms room = roomBean.getRoomById(id);
        //Or find by name
        //Rooms room = roomBean.getRoomByName(name);
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
                mw.addObject("sesUser",user);
                mw.addObject("rooms",roomBean.getAllRooms());
                return mw;
            }
            else {
                //CHANGED
                //ModelAndView mw = new ModelAndView("library"); // library (was profile)
                //TO ADMIN PAGE!!!
                ModelAndView mw = new ModelAndView("admin"); // library (was profile)
                //ALSO ADDED ROOMS!!!
                mw.addObject("rooms",roomBean.getAllRooms());

                mw.addObject("sesUser", user);
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