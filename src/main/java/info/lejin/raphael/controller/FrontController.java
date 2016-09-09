/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info.lejin.raphael.controller;

import info.lejin.raphael.dao.UserDao;
import info.lejin.raphael.model.User;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author lejin
 */
@Controller
public class FrontController {
    
    @Autowired
    private UserDao userDao;
    
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET,path = "/users",produces = "application/json")
    public List<User> getUsers(){
       List<User> userlist=userDao.list();
       userlist.forEach(user->System.out.println(user.getUsername()));
       return userlist;
    }
    
}
