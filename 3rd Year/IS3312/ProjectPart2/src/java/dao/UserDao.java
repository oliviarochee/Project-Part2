/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;



import Models.User;
import Utilities.IConstants;
import java.util.Vector;

/**
 *
 * @author oliviaroche
 */
public class UserDao {
    
     public User getUserByEmail(String email) {
        
        //If admin - return admin else just normal user
        //TODO - need to complete this
        
        if (email.equals("admin@admin.com")){
            User user1 = new User(1,"admin@admin.com","admin","Eabha", "Murray",IConstants.USER_TYPE_ADMIN);
            return user1;
        } 
        
        User user2 = new User(1,"user@user.com","user","Kourtney", "Kardashian",IConstants.USER_TYPE_GENERAL_USER);
        return user2;


    }

    public Vector<User> getAllUsers() {


        Vector<User> userData = new Vector();
        User user1 = new User(1,"admin@admin.com","admin","Mary", "Murphy",IConstants.USER_TYPE_ADMIN);
        userData.add(user1);
        User user2 = new User(1,"user@user.com","admin","Terry", "Jones",IConstants.USER_TYPE_GENERAL_USER);
        userData.add(user2);
        return userData;

    }

    
    
}
