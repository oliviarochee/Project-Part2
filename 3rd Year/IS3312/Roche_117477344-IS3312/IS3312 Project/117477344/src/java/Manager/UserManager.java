/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manager;
import dao.UserDao;
import Models.User;

/**
 *
 * @author oliviaroche
 */
public class UserManager {
    
    /** This will take a username and select from user table
     * This will return three possible statuses, login correct, 
     * unknown user or password incorrect
     * @param inUser 
     */
    public User loginUser(String email, String passWord){
        
        UserDao userDAO = new UserDao();
        User user = userDAO.getUserByEmail(email);
        if (user.getPassword().equals(passWord)){
            return user;
        }
        else return null;
    }
    
}
