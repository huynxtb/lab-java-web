package controller;
import com.opensymphony.xwork2.ActionSupport;
import dao.ContactDAO;
import dao.ProductDAO;
import entities.Contact;
import entities.Product;
import java.util.ArrayList;
import org.apache.struts2.ServletActionContext;

public class ProductAction extends ActionSupport {
    private ArrayList<Product> products; 
    private Contact contact; 
    
    public ProductAction() {
    }

    public ArrayList<Product> getProducts() {
        return products;
    }

    public void setProducts(ArrayList<Product> products) {
        this.products = products;
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public String displayTop2Popular() throws Exception {
        ProductDAO dao = new ProductDAO(); 
        products = dao.get2PopularProducts();
        
        ContactDAO contactDAO = new ContactDAO(); 
        contact = contactDAO.getContact(); 
        
        return SUCCESS; 
    }

    public String displayAll() throws Exception{
        ProductDAO dao = new ProductDAO(); 
        products = dao.getAllProducts(); 
        return SUCCESS; 
    }
    
    public String display() throws Exception{
        int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
        ProductDAO dao = new ProductDAO();
        Product product = dao.searchById(id); 
        if (product != null) {
            products = new ArrayList<>(); 
            products.add(product); 
            dao.updatePost(id, product.getPageCount() + 1); 
            return SUCCESS; 
        }
        return NONE; 
    }
}
