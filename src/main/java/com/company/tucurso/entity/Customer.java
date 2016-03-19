package com.company.tucurso.entity;

/**
 *
 * @author fede
 */
public abstract class Customer extends Account{
    
    private String county;
    private String province;
    private String city;
    private String phone;

//    public Customer() {
//    }
//
//    public Customer(String county, String province, String city, int phone) {
//        this.county = county;
//        this.province = province;
//        this.city = city;
//        this.phone = phone;
//    }
    
        public Customer(String county, String province, String city, String phone, String user, String password, String email) {
        super(user, password, email);
        this.county = county;
        this.province = province;
        this.city = city;
        this.phone = phone;
    }
    
    

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
    
    
}
