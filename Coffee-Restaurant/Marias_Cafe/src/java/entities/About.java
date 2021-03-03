package entities;

public class About {
    String name, imageDescription, content; 

    public About() {
    }

    public About(String name, String imageDescription, String content) {
        this.name = name;
        this.imageDescription = imageDescription;
        this.content = content;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImageDescription() {
        return imageDescription;
    }

    public void setImageDescription(String imageDescription) {
        this.imageDescription = imageDescription;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
}
