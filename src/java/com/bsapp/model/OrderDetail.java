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
public class OrderDetail {


    private Integer id;
    private Integer ProductID;
    private String productName0117;
    private int Quantity;
    private long unitCost;
    private long subTotal;
    
    public OrderDetail(){
        this.id = 0;
        this.ProductID = 0;
        this.productName0117 = "Empty";
        this.Quantity = 0;
        this.unitCost = 0;
        this.subTotal = 0 ;
    }

    public OrderDetail(int id, int ProductID, String productName0117, int Quantity, long unitCost, long subTotal) {
        this.id = id;
        this.ProductID= ProductID;
        this.productName0117 = productName0117;
        this.Quantity = Quantity;
        this.unitCost = unitCost;
        this.subTotal = subTotal;
    }
        /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the ProductID
     */
    public long getProductID() {
        return ProductID;
    }

    /**
     * @param ProductID the ProductID to set
     */
    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    /**
     * @return the productName
     */
    public String getProductName0117() {
        return productName0117;
    }

    /**
     * @param productName the productName to set
     */
    public void setProductName0117(String productName0117) {
        this.productName0117 = productName0117;
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
     * @return the unitCost
     */
    public long getUnitCost() {
        return unitCost;
    }

    /**
     * @param unitCost the unitCost to set
     */
    public void setUnitCost(long unitCost) {
        this.unitCost = unitCost;
    }

    /**
     * @return the subTotal
     */
    public long getSubTotal() {
        return subTotal;
    }

    /**
     * @param subTotal the subTotal to set
     */
    public void setSubTotal(long subTotal) {
        this.subTotal = subTotal;
    }
}
