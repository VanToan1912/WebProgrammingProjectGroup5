package bean;

public class General_Info {
    private String email;
    private String facebook;
    private String phone_number;
    private String address;
    private String introduction;
    private String slieshow;

    public General_Info() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getSlieshow() {
        return slieshow;
    }

    public void setSlieshow(String slieshow) {
        this.slieshow = slieshow;
    }

    @Override
    public String toString() {
        return "General_Info{" +
                "email='" + email + '\'' +
                ", facebook='" + facebook + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", address='" + address + '\'' +
                ", introduction='" + introduction + '\'' +
                ", slieshow='" + slieshow + '\'' +
                '}';
    }
}
