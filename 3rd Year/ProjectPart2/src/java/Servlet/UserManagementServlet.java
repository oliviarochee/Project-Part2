package Servlet;

import dao.UserDao;
import Models.User;
import Utilities.IConstants;
import java.io.IOException;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bemerson
 */
public class UserManagementServlet extends HttpServlet implements IConstants {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action.equals("List")) {
            listUsers(request, response);

        } else if (action.equals("addInit")) {
            addInitUsers(request, response);
        } else if (action.equals("add")) {
            addUser(request, response);
        } else if (action.equals("delete")) {
            deleteUser(request, response);
        }

        if (action.equals("updateUserRedirect")) {
            updateUserRedirect(request, response);
        }
        if (action.equals("updateUserConfirm")) {
            updateUserConfirm(request, response);
        }
    }

    void updateUserRedirect(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/update-user.jsp");
        String id = request.getParameter("id");
        UserDao userDAO = new UserDao();
        User user = userDAO.getUserById(id);
        //request.getSession(true).setAttribute("UPDATE_USER", user);
        request.getSession(true).setAttribute("UPDATE_USER_ID", user.getId());
        request.getSession(true).setAttribute("UPDATE_USER_FNAME", user.getFirstName());
        request.getSession(true).setAttribute("UPDATE_USER_LNAME", user.getLastName());
        request.getSession(true).setAttribute("UPDATE_USER_EMAIL", user.getEmail());
        rd.forward(request, response);
    }

    void updateUserConfirm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        UserDao userDAO = new UserDao();

        userDAO.updateUser(id, fname, lname, email);
        listUsers(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("EMAIL");
        UserDao userDAO = new UserDao();
        userDAO.deleteUser(email);
        Vector<User> allUser = userDAO.getAllUsers();
        request.setAttribute(IConstants.REQUEST_KEY_USERS, allUser);

        RequestDispatcher rd = request.getRequestDispatcher("/AdminChangeUser.jsp");
        rd.forward(request, response);

    }

    private void listUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDao userDAO = new UserDao();
        Vector<User> allUsers = userDAO.getAllUsers();

        request.setAttribute(IConstants.REQUEST_KEY_USERS, allUsers);

        RequestDispatcher rd = request.getRequestDispatcher("/AdminChangeUser.jsp");
        rd.forward(request, response);
    }

    private void addInitUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher rd = request.getRequestDispatcher("/addUser.jsp");
        rd.forward(request, response);
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("EMAIL");
        User newUser = new User();
        newUser.setEmail(email);
        String pword = request.getParameter("PASSWORD");
        newUser.setPassword(pword);
        String fName = request.getParameter("FNAME");
        newUser.setFirstName(fName);
        String lName = request.getParameter("LNAME");
        newUser.setLastName(lName);
        String userType = request.getParameter("USERTYPE");
        newUser.setUserType(userType);

        UserDao userDAO = new UserDao();

        userDAO.insertUser(newUser);

        Vector<User> allUsersVect = userDAO.getAllUsers();

        request.setAttribute(IConstants.REQUEST_KEY_USERS, allUsersVect);

        RequestDispatcher rd = request.getRequestDispatcher("/AdminChangeUser.jsp");
        rd.forward(request, response);
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
