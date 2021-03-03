package entities;

public class Product {
    private int id; 
    private String name, descriptionImage, content; 
    private long price; 
    private int pageCount; 
    
    public Product() {
    }

    public Product(int id, String name, String descriptionImage, String content, long price, int pageCount) {
        this.id = id;
        this.name = name;
        this.descriptionImage = descriptionImage;
        this.content = content;
        this.price = price;
        this.pageCount = pageCount;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }
    
    
}
