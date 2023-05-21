package com.idims.domain;

import java.math.BigDecimal;

/**
 * @author coli
 * @date 2023/5/18 上午 12:10
 */
public class PackageApplication {
    private int applicationId;
    private int customerId;
    private String sender;
    private String senderPhone;
    private String packageName;
    private BigDecimal freight;
    private String origin;
    private String recipient;
    private String recipientPhone;
    private String recipientAddress;
    private int employeeId;
    private Employee employee; // 关联关系

    @Override
    public String toString() {
        return "PackageApplication{" +
                "applicationId=" + applicationId +
                ", customerId=" + customerId +
                ", sender='" + sender + '\'' +
                ", senderPhone='" + senderPhone + '\'' +
                ", packageName='" + packageName + '\'' +
                ", freight=" + freight +
                ", origin='" + origin + '\'' +
                ", recipient='" + recipient + '\'' +
                ", recipientPhone='" + recipientPhone + '\'' +
                ", recipientAddress='" + recipientAddress + '\'' +
                ", employeeId=" + employeeId +
                ", employee=" + employee +
                '}';
    }

    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getSenderPhone() {
        return senderPhone;
    }

    public void setSenderPhone(String senderPhone) {
        this.senderPhone = senderPhone;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public BigDecimal getFreight() {
        return freight;
    }

    public void setFreight(BigDecimal freight) {
        this.freight = freight;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getRecipient() {
        return recipient;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    public String getRecipientPhone() {
        return recipientPhone;
    }

    public void setRecipientPhone(String recipientPhone) {
        this.recipientPhone = recipientPhone;
    }

    public String getRecipientAddress() {
        return recipientAddress;
    }

    public void setRecipientAddress(String recipientAddress) {
        this.recipientAddress = recipientAddress;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
