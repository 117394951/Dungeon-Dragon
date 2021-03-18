/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bsapp.manager;

import com.bsapp.dao.UserDAO;
import com.bsapp.model.User;


public class UserManager {
    
 
    public User loginUser(String email, String passWord){
        
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByEmail(email);
        if (user.getPassword().equals(passWord)){
            return user;
        }
        else return null;
    }
    
}
