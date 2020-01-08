/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author 117477344
 */
public class LipProduct {

    /**
     * @return the productID
     */
    public int getProductID() {
        return productID;
    }

    /**
     * @param productID the productID to set
     */
    public void setProductID(int productID) {
        this.productID = productID;
    }

    /**
     * @return the code
     */
    public String getCode() {
        return code;
    }

    /**
     * @param code the code to set
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the color
     */
    public String getColor() {
        return color;
    }

    /**
     * @param color the color to set
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * @return the unitcost
     */
    public String getUnitcost() {
        return unitcost;
    }

    /**
     * @param unitcost the unitcost to set
     */
    public void setUnitcost(String unitcost) {
        this.unitcost = unitcost;
    }
 private int productID;
    private String code;
    private String image;
    private String type;
    private String description;
    private String name;
    private String color;
    private String unitcost;
    
    
    public LipProduct(){
    
    
    }
    
     public LipProduct(int id, String code, String name, String image, String type, String desc,  String color, String cost){
         this.productID=id;
         this.code=code;
         this.name=name;
         this.image=image;
         this.type=type;
         this.description=desc;        
         this.color=color;
         this.unitcost=cost;
         
         
    
    
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }
}

