package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.ContactDAO;
import entities.Contact;

public class ContactAction extends ActionSupport {
    private Contact contact; 
    
    public ContactAction() {
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public String execute() throws Exception {
        ContactDAO dao = new ContactDAO(); 
        contact = dao.getContact(); 
        return SUCCESS; 
    }

}
