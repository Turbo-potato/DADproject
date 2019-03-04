package com.myspring.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller public class MainController {

    @RequestMapping(value = {"index", "/"})
    public ModelAndView indexPage(){
        return new ModelAndView("index1");
    }
    @RequestMapping(value="aboutcabinet")
    public ModelAndView aboutcabinetPage(){
        return new ModelAndView("aboutcabinet");
    }
}