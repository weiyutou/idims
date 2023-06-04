package com.idims.service;

import com.idims.domain.Customer;
import com.idims.domain.ParcelApplication;
import entity.PageRequestDTO;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 7:29
 */
@Service
public interface ParcelApplicationService {
    List<ParcelApplication> getParcelApplicationsByPage(PageRequestDTO pageRequestDTO);
    List<ParcelApplication> All();

    /*添加订单，客户下订单用的*/
    void addParcelApplication(ParcelApplication parcelApplication);

    List<ParcelApplication> getParcelApplicationsByCustomerId();
    List<ParcelApplication> getParcelApplicationsById();

    /*更新订单数据，业务员受理、承运用的*/
    void updateParcelApplication(ParcelApplication parcelApplication);

    void deleteParcelApplication(int applicationId);

    public int updateStatus(int applicationId, int newStatus);

    List<ParcelApplication> searchParcelApplicationById(String name);
}
