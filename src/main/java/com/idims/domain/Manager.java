package com.idims.domain;

import java.time.LocalDate;

/**
 * @author coli
 * @date 2023/5/17 下午 6:37
 */
public class Manager {
    private int managerId;
    private LocalDate startDate;
    private int branchId;
    private Branch branch; // 关联关系

    // Getters and Setters

    @Override
    public String toString() {
        return "Manager{" +
                "managerId=" + managerId +
                ", startDate=" + startDate +
                ", branchId=" + branchId +
                ", branch=" + branch +
                '}';
    }

    public int getManagerId() {
        return managerId;
    }

    public void setManagerId(int managerId) {
        this.managerId = managerId;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public Branch getBranch() {
        return branch;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }
}
