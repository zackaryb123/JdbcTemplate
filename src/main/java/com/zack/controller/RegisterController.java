package com.zack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RegisterController {

    @RequestMapping("/register")
    public ModelAndView register(HttpServletRequest request, HttpServletResponse response){
        try {
            String id = request.getParameter("id");
            String name  = request.getParameter("name");
            String age = request.getParameter("age");
            String address = request.getParameter("address");

            if(id.length() == 0 || name.length() == 0 || address.length() == 0 || age.length() == 0){
                return new ModelAndView("error", "msg", "invalid fields");
            } else {
                return new ModelAndView("result", "msg", "Successful register");
            }
        } catch (Exception e) {
            return new ModelAndView("error", "msg", "invalid fields");
        }
    }
}
