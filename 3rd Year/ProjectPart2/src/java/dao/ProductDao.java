/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Models.LipProduct;
import Models.User;
import Utilities.DBManager;
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
 * @author 117477344
 */
public class ProductDao {
    public LipProduct getProductByCode(String code){
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int productid = 0;
        String name = null;
        String type = null;
        String image=null;
        String description = null;
        String color = null;
        String unitprice = null;
        LipProduct tempProduct = new LipProduct();
       String query = "SELECT * FROM PRODUCT WHERE CODE=" + "'" + code + "'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                productid = (rs.getInt(1));
                name = (rs.getString(3));
                type = (rs.getString(4));
                image=(rs.getString(5));
                description = (rs.getString(6));
                color = (rs.getString(7));
                unitprice = (rs.getString(8));
                
                 
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempProduct.setCode(code);
        tempProduct.setProductID(productid);
        tempProduct.setName(name);
        tempProduct.setType(type);
        tempProduct.setImage(image);
        tempProduct.setDescription(description);
        tempProduct.setColor(color);
        tempProduct.setUnitcost(unitprice);
        return tempProduct;

    }
    
      public Vector<LipProduct> getAllProducts() {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int ProductID = 0;
        String Code = null;
        String Name = null;
        String Type = null;
        String Image = null;
        String Description = null;
        String Color = null;
        String UnitCost = null;
        Vector<LipProduct> productData = new Vector();

        String query = "SELECT * FROM PRODUCT";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                ProductID = (rs.getInt(1));
                Code = (rs.getString(2));
                Name = (rs.getString(3));
                Type = (rs.getString(4));
                Image = (rs.getString(5));
                Description = (rs.getString(6));
                Color = (rs.getString(6));
                UnitCost = (rs.getString(6));
                LipProduct tempProduct = new LipProduct();
                tempProduct.setCode(Code);
                tempProduct.setProductID(ProductID);
                tempProduct.setName(Name);
                tempProduct.setType(Type);
                tempProduct.setImage(Image);
                tempProduct.setDescription(Description);
                tempProduct.setColor(Color);
                tempProduct.setUnitcost(UnitCost);
                productData.add(tempProduct);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return productData;
        
        

    }
    public void insertProduct(LipProduct newProduct){
        
        String stmtNewProduct = "INSERT INTO PRODUCT(CODE,NAME,TYPE,IMAGE,DESCRIPTION, COLOR, UNITCOST)\n VALUES('" + newProduct.getCode() + "', '" + newProduct.getName() + "', '" + newProduct.getType() + "', '" + newProduct.getImage() + "','" + newProduct.getDescription() + "')" + newProduct.getColor() + "')" + newProduct.getUnitcost() + "')";
        DBManager dmbgr = new DBManager();
        Statement currentStatement = null;
        Connection con = dmbgr.getConnection();
        try {
            // Execute statement
            currentStatement = con.createStatement();
            currentStatement.execute(stmtNewProduct);
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
    }
        
    }
    

