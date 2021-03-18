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
public class ShippingInfo {
    
     private long shippingID;
      private String shippingType;
      private long shippingCost;
    
    public ShippingInfo(){
        this.shippingID = 0;
        this.shippingType = "Empty";  
        this.shippingCost = 0 ;
    }

    public ShippingInfo(long shippingID, String shippingType, int Quantity, long shippingCost) {
        this.shippingID = shippingID;
        this.shippingType = shippingType;
        this.shippingCost = shippingCost;
    }
}
