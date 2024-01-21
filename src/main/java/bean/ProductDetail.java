package bean;

import java.util.List;

public class ProductDetail {
    private int pdDetailId;
    private int productId; // Thay thế pdId bằng productId để phản ánh cấu trúc mới của bảng
    private String title;
    private String content;
    private String morphologyDescription;
    private String plantingCareDescription;
    private List<String> imageUrls; // Danh sách đường dẫn hình ảnh từ bảng images

    // Constructors, getters, setters

    public ProductDetail(int pdDetailId, int productId, String title, String content,
                         String morphologyDescription, String plantingCareDescription,
                         List<String> imageUrls) {
        this.pdDetailId = pdDetailId;
        this.productId = productId;
        this.title = title;
        this.content = content;
        this.morphologyDescription = morphologyDescription;
        this.plantingCareDescription = plantingCareDescription;
        this.imageUrls = imageUrls;
    }

    public ProductDetail() {
    }

    public int getPdDetailId() {
        return pdDetailId;
    }

    public void setPdDetailId(int pdDetailId) {
        this.pdDetailId = pdDetailId;
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

    public String getMorphologyDescription() {
        return morphologyDescription;
    }

    public void setMorphologyDescription(String morphologyDescription) {
        this.morphologyDescription = morphologyDescription;
    }

    public String getPlantingCareDescription() {
        return plantingCareDescription;
    }

    public void setPlantingCareDescription(String plantingCareDescription) {
        this.plantingCareDescription = plantingCareDescription;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(List<String> imageUrls) {
        this.imageUrls = imageUrls;
    }

    @Override
    public String toString() {
        return "ProductDetail{" +
                "pdDetailId=" + pdDetailId +
                ", productId=" + productId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", morphologyDescription='" + morphologyDescription + '\'' +
                ", plantingCareDescription='" + plantingCareDescription + '\'' +
                ", imageUrls=" + imageUrls +
                '}';
    }
}
