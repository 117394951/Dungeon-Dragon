/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.dao;

import com.bsapp.model.User;
import com.bsapp.utils.DBManager;
import com.bsapp.utils.IConstants;
import com.bsapp.utils.SetupDb;
import static com.sun.xml.ws.security.impl.policy.Constants.logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;

/**
 *
 * @author bemerson
 */
public class UserDAO {

   
   

    public User getUserByEmail(String email) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 0;
        String password = null;
        String fName = null;
        String lName = null;
        String userType = null;
        User tempUser = new User();

        String query = "SELECT * FROM USERDATA WHERE EMAIL=" + "'" + email + "'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempUser.setEmail(email);
        tempUser.setId(userId);
        tempUser.setFirstName(fName);
        tempUser.setLastName(lName);
        tempUser.setPassword(password);
        tempUser.setUserType(userType);
        return tempUser;

    }

    public static Vector<User> getAllUsers() {
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 0;
        String password = null;
        String email = null;
        String fName = null;
        String lName = null;
        String userType = null;
        Vector<User> userData = new Vector();

        String query = "SELECT * FROM USERDATA";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                email = (rs.getString(2));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
                User tempUser = new User();
                tempUser.setEmail(email);
                tempUser.setId(userId);
                tempUser.setFirstName(fName);
                tempUser.setLastName(lName);
                tempUser.setPassword(password);
                tempUser.setUserType(userType);
                userData.add(tempUser);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return userData;
        
        

    }
    
        public static void deleteUsers(String email){
            String stmtUpdate = "DELETE FROM USERDATA WHERE EMAIL = ?";
            DBManager dmbgr = new DBManager();
            PreparedStatement currentStatement = null;
            Connection conn = dmbgr.getConnection();
            try{
                currentStatement = conn.prepareStatement(stmtUpdate);
                currentStatement.setString(1, email);
                currentStatement.executeUpdate();
                System.out.println("Deleting");
            }catch (SQLException e){
                System.out.println(e);
            }}
        
    public void insertUser(User newUser){
        
        String stmtNewUser = "INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)\n VALUES('" + newUser.getEmail() + "', '" + newUser.getPassword() + "', '" + newUser.getFirstName() + "', '" + newUser.getLastName() + "','" + newUser.getUserType() + "')";
        DBManager dmbgr = new DBManager();
        Statement currentStatement = null;
        Connection con = dmbgr.getConnection();
        try {
            // Execute statement
            currentStatement = con.createStatement();
            currentStatement.execute(stmtNewUser);
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
    SetupDb sdb = new SetupDb();
    sdb.showData();}
    
        }
    

            
        


