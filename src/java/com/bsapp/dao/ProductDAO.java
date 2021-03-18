/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.dao;
import com.bsapp.model.Product;
import com.bsapp.utils.DBManager;
import com.bsapp.utils.IConstants;
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
 * @author becca
 */
public class ProductDAO {
    
    private static Vector<Product> staticProductVector;
    
    
    
    public Product getProductByName(String name){
        DBManager dmbgr = new DBManager();
        Connection conn = dmbgr.getConnection();
        int productId = 0;
        String category = null;
        String description = null;
        String code = null;
        Product tempProduct = new Product();
        
        String query = "SELECT * FROM PRODUCT WHERE NAME =" + "'" + name + "'";
        try{
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                productId = (rs.getInt(1));
                category = (rs.getString(3));
                description = (rs.getString(4));
                code = (rs.getString(5));
            }
        }catch (SQLException e){
                    e.printStackTrace();
        }
            tempProduct.setName(name);
            tempProduct.setCategory(category);
            tempProduct.setDescription(description);
            tempProduct.setCode(code);
            return tempProduct;
        }
    
    
    public static Vector<Product> getAllProducts(){
        DBManager dmbgr = new DBManager();
        Connection conn = dmbgr.getConnection();
        int productId = 0;
        String name = null;
        String category = null;
        String description = null;
        String code = null;
        Vector<Product> productData = new Vector();
        
        String query = "SELECT * FROM PRODUCT";
        try{
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                productId = (rs.getInt(1));
                name = (rs.getString(2));
                category = (rs.getString(3));
                description = (rs.getString(4));
                code = (rs.getString(5));
                Product tempProduct = new Product();
                tempProduct.setId(productId);
                tempProduct.setName(name);
                tempProduct.setCategory(category);
                tempProduct.setDescription(description);
                tempProduct.setCode(code);
                productData.add(tempProduct);
        }
        }catch (SQLException e){
                    e.printStackTrace();
        }
        return productData; 
    }
    public Product getProduct(Integer productId){
        
        Product prod = new Product();
        for (Product currentProduct: staticProductVector ){
            if (currentProduct.getId()==productId){
                prod =  currentProduct;
                return prod;
            }
        }
        
        return prod;
    }
    public void insertProduct(Product newProduct){
        String stmtNewProduct = "INSERT INTO PRODUCT(NAME,CATEGORY,DESCRIPTION,CODE)\n VALUES('" + newProduct.getName() + "', '" + newProduct.getCategory() + "', '" + newProduct.getDescription() + "', '" + newProduct.getCode() + "')";
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
    public static void deleteProducts(String name){
        String stmtUpdate = "DELETE FROM PRODUCT WHERE NAME = ?";
        DBManager dmbgr = new DBManager();
            PreparedStatement currentStatement = null;
            Connection conn = dmbgr.getConnection();
        try{
                    currentStatement = conn.prepareStatement(stmtUpdate);
                    currentStatement.setString(1, name);
                    currentStatement.executeUpdate();
                    System.out.println("Deleting");
                }catch (SQLException e){
                    System.out.println(e);
                }}

    public void addProduct(Product newProduct){
        staticProductVector.add(newProduct);
        return;
    }
    public void updateProduct(Product product){
        

        for (Product currentProduct: staticProductVector ){
            if (currentProduct.getId()==product.getId()){
                int productToUpdate =  staticProductVector.indexOf(currentProduct);
                staticProductVector.set(productToUpdate, product);
            }
        }
       
    }

    public Vector<Product> getallProducts() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    }
    

    

