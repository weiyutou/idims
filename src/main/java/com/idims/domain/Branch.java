package com.idims.domain;

/**
 * @author coli
 * @date 2023/5/28 下午 4:30
 */
public class Branch {
    private int branchId;
    private String name;
    private String manager;
    private String officePhone;
    private String address;

    @Override
    public String toString() {
        return "Branch{" +
                "branchId=" + branchId +
                ", name='" + name + '\'' +
                ", manager='" + manager + '\'' +
                ", officePhone='" + officePhone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
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
}