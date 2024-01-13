package bean;

import java.util.List;

public class ProductDetail {
    private int pdDetailId;
    private int pdId;
    private String title;
    private String content;
    private String morphologyDescription;
    private String utilityDescription;
    private String plantingCareDescription;
    private List<String> imageUrls; // Danh sách đường dẫn hình ảnh từ bảng images

    // Constructors, getters, setters

    public ProductDetail(int pdDetailId, int pdId, String title, String content,
                         String morphologyDescription, String utilityDescription, String plantingCareDescription,
                         List<String> imageUrls) {
        this.pdDetailId = pdDetailId;
        this.pdId = pdId;
        this.title = title;
        this.content = content;
        this.morphologyDescription = morphologyDescription;
        this.utilityDescription = utilityDescription;
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

    public int getPdId() {
        return pdId;
    }

    public void setPdId(int pdId) {
        this.pdId = pdId;
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

    public String getUtilityDescription() {
        return utilityDescription;
    }

    public void setUtilityDescription(String utilityDescription) {
        this.utilityDescription = utilityDescription;
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
                ", pdId=" + pdId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", morphologyDescription='" + morphologyDescription + '\'' +
                ", utilityDescription='" + utilityDescription + '\'' +
                ", plantingCareDescription='" + plantingCareDescription + '\'' +
                ", imageUrls=" + imageUrls +
                '}';
    }
}
