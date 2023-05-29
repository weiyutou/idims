package com.idims.domain;

/**
 * @author coli
 * @date 2023/5/28 下午 6:14
 */
public class Customer {
    private Integer customerId;
    private String companyName;
    private String address;
    private String province;
    private String contactName;
    private String contactPhone;
    private String bankAccount;

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", companyName='" + companyName + '\'' +
                ", address='" + address + '\'' +
                ", province='" + province + '\'' +
                ", contactName='" + contactName + '\'' +
                ", contactPhone='" + contactPhone + '\'' +
                ", bankAccount='" + bankAccount + '\'' +
                '}';
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
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

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
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
