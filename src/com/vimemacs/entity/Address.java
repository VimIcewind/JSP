package com.vimemacs.entity;

/**
 * Created by hwd on 2015/10/3.
 */
public class Address extends IdEntity {
    private String city;
    private String contry;
    private String userId;

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getContry() {
        return contry;
    }

    public void setContry(String contry) {
        this.contry = contry;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Address{" +
                "city='" + city + '\'' +
                ", contry='" + contry + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }
}
