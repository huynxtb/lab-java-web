package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.AboutDAO;
import entities.About;

public class AboutAction extends ActionSupport {
    private About about; 
    
    public AboutAction() {
    }

    public About getAbout() {
        return about;
    }

    public void setAbout(About about) {
        this.about = about;
    }

    public String execute() throws Exception {
        AboutDAO  dao = new AboutDAO(); 
        about = dao.getAbout(); 
        return SUCCESS; 
    }

}
