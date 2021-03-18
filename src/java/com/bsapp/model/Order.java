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
public class Order {

   


       private int id;
       private int userID;
    private String dateCreated;
    private String paymentDetails;
    private String dateShipped;
    private String orderStatus;
    private long shippingID;
    private long orderTotal;
    
    public Order(){
        this.id = 0;
        this.userID = 0;
        this.dateCreated = "Empty";
        this.paymentDetails = "Empty";
        this.dateShipped = "Empty";
        this.orderStatus = "Empty";  
        this.shippingID = 0;
        this.orderTotal = 0 ;
    }

    public Order(int id, int userID, String dateCreated, String paymentDetails, String dateShipped, String orderStatus, long shippingID, long orderTotal) {
        this.id = id;
        this.userID = userID;
        this.dateCreated = dateCreated;
        this.paymentDetails = paymentDetails;
        this.dateShipped = dateShipped;
        this.orderStatus = orderStatus;
        this.shippingID = shippingID;
        this.orderTotal = orderTotal;
    }
    
    

    /**
     * @return the userID
     */
    public long getUserID() {
        return userID;
    }

    /**
     * @param userID the userID to set
     */
    public void setUserID(int userID) {
        this.userID = userID;
    }

    /**
     * @return the dateCreated
     */
    public String getDateCreated() {
        return dateCreated;
    }

    /**
     * @param dateCreated the dateCreated to set
     */
    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }
    
     /**
     * @return the paymentDetails
     */
    public String getPaymentDetails() {
        return paymentDetails;
    }

    /**
     * @param paymentDetails the paymentDetails to set
     */
    public void setPaymentDetails(String paymentDetails) {
        this.paymentDetails = paymentDetails;
    }

    /**
     * @return the dateShipped
     */
    public String getDateShipped() {
        return dateShipped;
    }

    /**
     * @param dateShipped the dateShipped to set
     */
    public void setDateShipped(String dateShipped) {
        this.dateShipped = dateShipped;
    }

    /**
     * @return the orderStatus
     */
    public String getOrderStatus() {
        return orderStatus;
    }

    /**
     * @param orderStatus the orderStatus to set
     */
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    /**
     * @return the shippingID
     */
    public long getShippingID() {
        return shippingID;
    }

    /**
     * @param shippingID the shippingID to set
     */
    public void setShippingID(long shippingID) {
        this.shippingID = shippingID;
    }

    /**
     * @return the orderTotal
     */
    public long getOrderTotal() {
        return orderTotal;
    }

    /**
     * @param orderTotal the orderTotal to set
     */
    public void setOrderTotal(long orderTotal) {
        this.orderTotal = orderTotal;
    }
    
}
