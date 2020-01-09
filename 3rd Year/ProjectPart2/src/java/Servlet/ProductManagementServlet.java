package Servlet;

import Models.LipProduct;
import dao.ProductDao;
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
public class ProductManagementServlet extends HttpServlet implements IConstants {

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
        if (action.equals("List")){
            listProducts(request,response);
        }
        if (action.equals("addInit")){
            addInitProduct(request,response);
        }
        if (action.equals("add")){
            addProduct(request,response);
        }
        else {
        //RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        //rd.forward(request, response);
        }
    }
    
  private void listProducts(HttpServletRequest request, HttpServletResponse response)
  throws ServletException, IOException {
      ProductDao ProductDAO = new ProductDao();
        Vector<LipProduct> allProductVect = ProductDAO.getAllProducts();

        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allProductVect);

        RequestDispatcher rd = request.getRequestDispatcher("/shop.jsp");
        rd.forward(request, response);
  }
  
  private void addInitProduct(HttpServletRequest request, HttpServletResponse response)
  throws ServletException, IOException {

        RequestDispatcher rd = request.getRequestDispatcher("/addProduct.jsp");
        rd.forward(request, response);
  }
  
  private void addProduct(HttpServletRequest request, HttpServletResponse response)
  throws ServletException, IOException {

        String Code = request.getParameter("CODE");
        LipProduct newProduct = new LipProduct();
        newProduct.setCode(Code);
        String Name = request.getParameter("NAME");
        newProduct.setName(Name);
        String Type = request.getParameter("TYPE");
        newProduct.setType(Type);
        String Image = request.getParameter("IMAGE");
        newProduct.setImage(Image);
        String Description = request.getParameter("DESCRIPTION");
        newProduct.setDescription(Description);
        String Color = request.getParameter("COLOR");
        newProduct.setColor(Color);
        String UnitCost = request.getParameter("UNITCOST");
        newProduct.setUnitcost(UnitCost);
      
        ProductDao ProductDao = new ProductDao();
        
        ProductDao.insertProduct(newProduct);
        
        Vector<LipProduct> allProductsVect = ProductDao.getAllProducts();

        request.setAttribute(IConstants.REQUEST_KEY_ALL_USERS, allProductsVect);

        RequestDispatcher rd = request.getRequestDispatcher("/userManagement.jsp");
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
