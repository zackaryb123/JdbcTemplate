package com.zack.controller;

import com.zack.dao.CustomerDao;
import com.zack.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    CustomerDao dao;

    @RequestMapping("/add")
    public ModelAndView addCustomer(HttpServletRequest request, HttpServletResponse response){

        try {
            int id = Integer.valueOf(request.getParameter("cId"));
            String name = request.getParameter("cName");
            String address = request.getParameter("cAddress");
            int age = Integer.valueOf(request.getParameter("cAge"));

            Customer customer = new Customer();
            customer.setId(id);
            customer.setName(name);
            customer.setAddress(address);
            customer.setAge(age);

            dao.saveCustomer(customer);
            return new ModelAndView("result", "msg", name+" Added!");

        } catch (Exception e) {
            return new ModelAndView("error", "msg", "Invalid Inputs!");
        }
    }

    @RequestMapping("/delete")
    public ModelAndView deleteCustomer(HttpServletRequest request, HttpServletResponse response){
        try{
            int id = Integer.valueOf(request.getParameter("cId"));
            dao.delete(id);
            return new ModelAndView("result", "msg", "Successful");
        } catch(Exception e){
            return new ModelAndView("error", "msg", "Invalid Id");
        }
    }

    @RequestMapping("/viewById")
    public ModelAndView getById(HttpServletRequest request, HttpServletResponse response){
        try{
            int id = Integer.valueOf(request.getParameter("cid"));
            Customer customer = dao.getbyId(id);
            return new ModelAndView("result", "customer", customer);
        } catch (Exception e){
            return new ModelAndView("error", "msg", "Invalid Id");
        }
    }

    @RequestMapping("/view")
    public ModelAndView getDetails() {
        List<Customer> customers = dao.getDetails();
        return new ModelAndView("result", "customers", customers);
    }

    @RequestMapping("/update")
    public ModelAndView updateAddress(HttpServletRequest request, HttpServletResponse response) {
        try{
            int id = Integer.valueOf(request.getParameter("cId"));
            String address = request.getParameter("cAddress");
            Customer customer = new Customer();
            customer.setId(id);
            customer.setAddress(address);

            dao.updateAddress(customer);
            return new ModelAndView("result", "msg", "Successful");
        } catch(Exception e){
            return new ModelAndView("error", "msg", "Invalid Id");
        }
    }

    @RequestMapping(value="/redirect")
    public ModelAndView redirect() {
        return new ModelAndView("redirect:/index.jsp");
    }
}
