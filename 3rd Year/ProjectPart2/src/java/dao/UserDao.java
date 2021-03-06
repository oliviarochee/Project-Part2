/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;



import Models.User;
import Utilities.DBManager;
import Utilities.IConstants;
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
 * @author oliviaroche
 */
public class UserDao {
    
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
                password = rs.getString(3);
                fName = rs.getString(4);
                lName = rs.getString(5);
                userType = rs.getString(6);
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

    public Vector<User> getAllUsers() {

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
                userId = rs.getInt(1);
                email = rs.getString(2);
                password = rs.getString(3);
                fName = rs.getString(4);
                lName = rs.getString(5);
                userType = rs.getString(6);
                
                User tempUser = new User();
                tempUser.setId(userId);
                tempUser.setEmail(email);
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
    
    
    

   public User getUserById(String id) {

       DBManager dmbgr = new DBManager();
       Connection con = dmbgr.getConnection();
       int userId = 0;
       String password = null;
       String email = null;
       String fName = null;
       String lName = null;
       String userType = null;
       User tempUser = new User();

       String query = "SELECT * FROM USERDATA WHERE User_ID = ?";
       try {
           PreparedStatement stmt = con.prepareStatement(query);
           stmt.setString(1, id);
           ResultSet rs = stmt.executeQuery();
           while (rs.next()) {
               userId = (rs.getInt(1));
               email = (rs.getString(2));
               password = (rs.getString(3));
               fName = (rs.getString(4));
               lName = (rs.getString(5));
               userType = (rs.getString(6));

               tempUser.setEmail(email);
               tempUser.setId(userId);
               tempUser.setFirstName(fName);
               tempUser.setLastName(lName);
               tempUser.setPassword(password);
               tempUser.setUserType(userType);
           }

       } catch (SQLException e) {
           e.printStackTrace();
       }


       return tempUser;
   }
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
    }
     public String updateUser(String id, String fname, String lname, String email){
       String result = "";
       DBManager dbmgr = new DBManager();
       Connection con = dbmgr.getConnection();

       String query = "UPDATE USERDATA SET FNAME = ?, LNAME = ?, EMAIL = ? WHERE USER_ID = ?";

        result += query + " \n";

       try{
           PreparedStatement stmt = con.prepareStatement(query);
           stmt.setString(1, fname);
           stmt.setString(2, lname);
           stmt.setString(3, email);
           stmt.setString(4, id);
           stmt.executeUpdate();

       } catch (SQLException e) {
           result += (e.toString());
       }
       return result;
   }
    public void deleteUser (String email){
         String stmtDelete="DELETE FROM USERDATA WHERE EMAIL=" +"'" +email +"'";
    DBManager dbmgr = new DBManager();
    Connection conn = dbmgr.getConnection();
  
    try{
    PreparedStatement ps= conn.prepareStatement(stmtDelete);
    ps.executeUpdate();
  
    } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
    
    
    }
    }
        
    

    
    

