/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.model;

/**
 *
 * @author Aisling
 */
public class Cart {


      private long cartID;
      private long productID;
      private int Quantity;
      private long total;
    
    public Cart(){
        this.cartID = 0;
        this.productID = 0;  
        this.Quantity = 0;
        this.total = 0 ;
    }

    public Cart(long cartID, long productID, int Quantity, long total) {
        this.cartID = cartID;
        this.productID = productID;
        this.Quantity = Quantity;
        this.total = total;
    }
        /**
     * @return the cartID
     */
    public long getCartID() {
        return cartID;
    }

    /**
     * @param cartID the cartID to set
     */
    public void setCartID(long cartID) {
        this.cartID = cartID;
    }

    /**
     * @return the productID
     */
    public long getProductID() {
        return productID;
    }

    /**
     * @param productID the productID to set
     */
    public void setProductID(long productID) {
        this.productID = productID;
    }

    /**
     * @return the Quantity
     */
    public int getQuantity() {
        return Quantity;
    }

    /**
     * @param Quantity the Quantity to set
     */
    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    /**
     * @return the total
     */
    public long getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(long total) {
        this.total = total;
    }
}
