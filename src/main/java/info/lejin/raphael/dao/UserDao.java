/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info.lejin.raphael.dao;

import info.lejin.raphael.model.User;
import java.util.List;
import org.springframework.stereotype.Component;

/**
 *
 * @author lejin
 */
@Component
public interface UserDao {
    
    public List<User> list();
    
    public void saveOrUpdate(User user);
    
    public User get(int userID);
    
    public void delete(int userID);
}
