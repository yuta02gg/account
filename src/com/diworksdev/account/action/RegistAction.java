package com.diworksdev.account.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegistAction extends ActionSupport {
    private String family_name;
    private String last_name;
    private String family_name_kana;
    private String last_name_kana;
    private String email;
    private String password;
    private String gender;
    private String postal_code;
    private String prefecture;
    private String city;
    private String address;
    private String role;

    // Getters and setters for all fields

    public String execute() {
        // Validation logic
        if (family_name == null || last_name == null || family_name_kana == null || last_name_kana == null || email == null || password == null || gender == null || postal_code == null || prefecture == null || city == null || address == null || role == null) {
            return "input";
        }
        return "success";
    }

    // Getters and setters
    public String getFamily_name() {
        return family_name;
    }

    public void setFamily_name(String family_name) {
        this.family_name = family_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getFamily_name_kana() {
        return family_name_kana;
    }

    public void setFamily_name_kana(String family_name_kana) {
        this.family_name_kana = family_name_kana;
    }

    public String getLast_name_kana() {
        return last_name_kana;
    }

    public void setLast_name_kana(String last_name_kana) {
        this.last_name_kana = last_name_kana;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public String getPrefecture() {
        return prefecture;
    }

    public void setPrefecture(String prefecture) {
        this.prefecture = prefecture;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
