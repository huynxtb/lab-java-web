package entities;

public class Contact {
    private String address, phoneNumber, email, openingHours, desciptionImage, introduction; 

    public Contact(String address, String phoneNumber, String email, String openingHours, String desciptionImage, String introduction) {
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.openingHours = openingHours;
        this.desciptionImage = desciptionImage;
        this.introduction = introduction;
    }

    public Contact() {
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOpeningHours() {
        return openingHours;
    }

    public void setOpeningHours(String openingHours) {
        this.openingHours = openingHours;
    }

    public String getDesciptionImage() {
        return desciptionImage;
    }

    public void setDesciptionImage(String desciptionImage) {
        this.desciptionImage = desciptionImage;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
    
    
}
