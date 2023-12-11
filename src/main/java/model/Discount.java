package model;

import java.sql.Date;

public class Discount {
    int id;
    int percent;
    int quanity;
    String name;
    Date expiration;

    public Discount(int id, int percent, int quanity, String name, Date expiration) {
        this.id = id;
        this.percent = percent;
        this.quanity = quanity;
        this.name = name;
        this.expiration = expiration;
    }

    public Discount() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPercent() {
        return percent;
    }

    public void setPercent(int percent) {
        this.percent = percent;
    }

    public int getQuanity() {
        return quanity;
    }

    public void setQuanity(int quanity) {
        this.quanity = quanity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getExpiration() {
        return expiration;
    }

    public void setExpiration(Date expiration) {
        this.expiration = expiration;
    }

    @Override
    public String toString() {
        return "Discount{" +
                "id=" + id +
                ", percent=" + percent +
                ", quanity=" + quanity +
                ", name='" + name + '\'' +
                ", expiration=" + expiration +
                '}';
    }
}
