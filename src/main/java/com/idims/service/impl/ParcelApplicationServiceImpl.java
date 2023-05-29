package com.idims.service.impl;

import com.idims.domain.ParcelApplication;
import com.idims.mapper.ParcelApplicationMapper;
import com.idims.service.ParcelApplicationService;
import entity.PageRequestDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 7:30
 */
@Service
public class ParcelApplicationServiceImpl implements ParcelApplicationService {
    private ParcelApplicationMapper parcelApplicationMapper;

    @Autowired
    public ParcelApplicationServiceImpl(ParcelApplicationMapper parcelApplicationMapper) {
        this.parcelApplicationMapper = parcelApplicationMapper;
    }

    @Override
    public List<ParcelApplication> getParcelApplicationsByPage(PageRequestDTO pageRequestDTO) {
        int offset = pageRequestDTO.getPage() * pageRequestDTO.getSize();
        int limit = pageRequestDTO.getSize();
        return parcelApplicationMapper.getParcelApplicationsByPage(offset, limit);
    }

    @Override
    public List<ParcelApplication> All() {
        return parcelApplicationMapper.All();
    }

    @Override
    public void addParcelApplication(ParcelApplication parcelApplication) {
        parcelApplicationMapper.addParcelApplication(parcelApplication);
    }

    @Override
    public void updateParcelApplication(ParcelApplication parcelApplication) {
        parcelApplicationMapper.updateParcelApplication(parcelApplication);
    }

    @Override
    public void deleteParcelApplication(int applicationId) {
        parcelApplicationMapper.deleteParcelApplication(applicationId);
    }

    @Override
    public int updateStatus(int applicationId, int newStatus) {
        return parcelApplicationMapper.updateStatus(applicationId, newStatus);
    }

    @Override
    public List<ParcelApplication> getParcelApplicationsByCustomerId(Long customerId) {
        return parcelApplicationMapper.findByCustomerId(customerId);
    }

    @Override
    public List<ParcelApplication> getParcelApplicationsById() {
        return parcelApplicationMapper.findByCustomerIds();
    }
}
