/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProductDAO;
import entities.Product;

/**
 *
 * @author Admin
 */
public class AddNewProductAction extends ActionSupport {
    private String name, descriptionImage, content, price, url;

    public AddNewProductAction() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescriptionImage() {
        return descriptionImage;
    }

    public void setDescriptionImage(String descriptionImage) {
        this.descriptionImage = descriptionImage;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String execute() throws Exception {
        ProductDAO dao = new ProductDAO();
        dao.addNewProduct(name, descriptionImage, content, Long.parseLong(price), 0);
        Product product = dao.getNewestProduct(); 
        url = "cake?id=" + product.getId(); 
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (name == "" || name.isEmpty()) {
            addFieldError("nameError", "Name is required!");
        }
        if (price == "" || price.isEmpty()) {
            addFieldError("priceError", "Price is required!");
        } else if (!price.matches("\\d+")) {
            addFieldError("priceError", "Price is not Valid!");
        }
        if (content == "" || content.isEmpty()) {
            addFieldError("contentError", "Description is required!");
        }
    }

}
