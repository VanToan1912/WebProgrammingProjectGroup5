package bean;

public class News {
    private int newId;
    private int productId;
    private String title;
    private String content;

    public News() {
    }

    public int getNewId() {
        return newId;
    }

    public void setNewId(int newId) {
        this.newId = newId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "News{" +
                "newId=" + newId +
                ", productId=" + productId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
