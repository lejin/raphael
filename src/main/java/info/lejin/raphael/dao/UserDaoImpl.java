/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info.lejin.raphael.dao;

import info.lejin.raphael.model.User;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author lejin
 */
@Repository
public class UserDaoImpl implements UserDao{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<User> list() {
        List<User> userList=sessionFactory.getCurrentSession().createCriteria(User.class).list();
        return userList;
    }

    @Override
    public void saveOrUpdate(User user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User get(int userID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int userID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
