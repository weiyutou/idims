package com.idims.domain;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * @author coli
 * @date 2023/5/17 下午 6:44
 */
public class Dispatch {
    private int dispatchId;
    private int applicationId;
    private int employeeId;
    private LocalDateTime deliveryTime;
    private PackageApplication packageApplication; // 关联关系

    // Getters and Setters

    @Override
    public String toString() {
        return "Dispatch{" +
                "dispatchId=" + dispatchId +
                ", applicationId=" + applicationId +
                ", employeeId=" + employeeId +
                ", deliveryTime=" + deliveryTime +
                ", packageApplication=" + packageApplication +
                '}';
    }

    public int getDispatchId() {
        return dispatchId;
    }

    public void setDispatchId(int dispatchId) {
        this.dispatchId = dispatchId;
    }

    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public LocalDateTime getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(LocalDateTime deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    public PackageApplication getPackageApplication() {
        return packageApplication;
    }

    public void setPackageApplication(PackageApplication packageApplication) {
        this.packageApplication = packageApplication;
    }
}
