package com.idims.domain;

/**
 * @author coli
 * @date 2023/5/17 下午 6:36
 */
public class Branch {
    private int branchId;
    private String branchName;
    private String managerName;
    private int managerId;
    private String officePhone;
    private String address;

    // Getters and Setters

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public int getManagerId() {
        return managerId;
    }

    public void setManagerId(int managerId) {
        this.managerId = managerId;
    }

    public String getOfficePhone() {
        return officePhone;
    }

    public void setOfficePhone(String officePhone) {
        this.officePhone = officePhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Branch{" +
                "branchId=" + branchId +
                ", branchName='" + branchName + '\'' +
                ", managerName='" + managerName + '\'' +
                ", managerId=" + managerId +
                ", officePhone='" + officePhone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
