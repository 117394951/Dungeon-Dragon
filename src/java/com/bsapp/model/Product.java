/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsapp.model;

/**
 *
 * @author BEmerson
 */
public class Product {
    
    private int id;
    private String name;
    private String category;
    private String description;
    private String code;
    
    public Product(int id, String name, String category, String description, String code){
        this.id = id;
        this.name = name;
        this.category = category;
        this.description = description;
        this.code = code;
    }

    public Product() {
        
    }

  
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
     /**
     * @return the Name
     */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the prodDescription
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the prodDescription to set
     */
    public void setDescription(String description) {
        this.description = description;
    }
    public String getCategory(){
        return category;
    }
    
    public void setCategory(String category){
        this.category = category;
    }
    
    public String getCode(){
        return code;
    }
    public void setCode(String code){
        this.code = code;
    }
}
