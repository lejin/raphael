/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info.lejin.raphael.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import info.lejin.raphael.dao.UserDao;
import info.lejin.raphael.model.User;

/**
 *
 * @author lejin
 */
@Controller
public class FrontController {
    
    @Autowired
    private UserDao userDao;
    
    @RequestMapping(method = RequestMethod.GET,path = "admin/home")
    public ModelAndView getUsers(){
    	ModelAndView view= new ModelAndView("admin/index");
       List<User> userlist=userDao.list();
       userlist.forEach(user->System.out.println(user.getUsername()));
       view.addObject("users", userlist);
       return view;
    }
    
}
