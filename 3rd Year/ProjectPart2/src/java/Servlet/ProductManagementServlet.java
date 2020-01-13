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
        if (action.equals("List")) {
            listProducts(request, response);
        }
        if (action.equals("addInit")) {
            addInitProduct(request, response);
        }
        if (action.equals("add")) {
            addProduct(request, response);
        }
        if (action.equals("delete")) {
            deleteProduct(request, response);
        }
           if (action.equals("updateUserRedirect")) {
            updateUserRedirect(request, response);
        }
        if (action.equals("updateUserConfirm")) {
            updateProductConfirm(request, response);
        }
    }
    
    
    void updateUserRedirect(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/update-user.jsp");
        String code = request.getParameter("code");
        ProductDao productDAO = new ProductDao();
        LipProduct Product = productDAO.getProductByCode(code);
        request.getSession(true).setAttribute("UPDATE_PRODUCT", Product);
        request.getSession(true).setAttribute("UPDATE_PRODUCT_ID", Product.getProductID());
        request.getSession(true).setAttribute("UPDATE_PRODUCT_CODE", Product.getCode());
        request.getSession(true).setAttribute("UPDATE_PRODUCT_TYPE", Product.getType());
        request.getSession(true).setAttribute("UPDATE_PRODUCT_DESCRIPTION", Product.getDescription());
        request.getSession(true).setAttribute("UPDATE_PRODUCT_COLOR", Product.getColor());
        request.getSession(true).setAttribute("UPDATE_PRODUCT_UNITCOST", Product.getUnitcost());
        rd.forward(request, response);
    }

    void updateProductConfirm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("CODE");
        String name = request.getParameter("NAME");
        String type = request.getParameter("TYPE");
        String description = request.getParameter("DESCRIPTION");
        ProductDao ProductDAO = new ProductDao();
        LipProduct newProduct= new LipProduct();
        
        newProduct.setCode(code);
        

        ProductDAO.updateProduct(newProduct);
        listProducts(request, response);
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDao ProductDAO = new ProductDao();

        Vector<LipProduct> allProductVect = ProductDAO.getAllProducts();

        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allProductVect);

        RequestDispatcher rd = request.getRequestDispatcher("/AdminChangeProducts.jsp");
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
        String UnitCost = request.getParameter("PRICE");
        newProduct.setUnitcost(UnitCost);

        ProductDao ProductDao = new ProductDao();

        ProductDao.insertProduct(newProduct);

        Vector<LipProduct> allProductsVect = ProductDao.getAllProducts();

        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allProductsVect);

        RequestDispatcher rd = request.getRequestDispatcher("/AdminChangeProducts.jsp");
        rd.forward(request, response);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("deleting product");
        String code = request.getParameter("CODE");

        ProductDao productdao = new ProductDao();
        productdao.deleteProduct(code);

        Vector<LipProduct> allProducts = productdao.getAllProducts();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allProducts);

        RequestDispatcher rd = request.getRequestDispatcher("/AdminChangeProducts.jsp");
        rd.forward(request, response);

    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("CODE");
        String name = request.getParameter("NAME");
        String type = request.getParameter("TYPE");
        String image = request.getParameter("IMAGE");
        String desc = request.getParameter("DESCRIPTION");
        String colour = request.getParameter("COLOUR");
        String cost = request.getParameter("UNITCOST");

        LipProduct updateProd = new LipProduct();
        updateProd.setCode(code);
        updateProd.setName(name);
        updateProd.setType(type);
        updateProd.setImage(image);
        updateProd.setDescription(desc);
        updateProd.setColor(colour);
        updateProd.setUnitcost(cost);

        ProductDao pdao = new ProductDao();
        pdao.updateProduct(updateProd);

        Vector<LipProduct> allProduct = pdao.getAllProducts();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allProduct);

        RequestDispatcher rd = request.getRequestDispatcher("/");
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
