package com.idims.domain;

/**
 * @author coli
 * @date 2023/5/17 下午 6:41
 */
public class Customer {
    private int customerId;
    private String companyName;
    private String address;
    private String province;
    private String contactPerson;
    private String contactPhone;
    private String bankAccount;

    // Getters and Setters

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", companyName='" + companyName + '\'' +
                ", address='" + address + '\'' +
                ", province='" + province + '\'' +
                ", contactPerson='" + contactPerson + '\'' +
                ", contactPhone='" + contactPhone + '\'' +
                ", bankAccount='" + bankAccount + '\'' +
                '}';
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    public String getBankAccount() {
        return bankAccount;
    }

    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount;
    }
}
