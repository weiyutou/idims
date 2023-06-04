package com.idims.service.impl;

import com.idims.domain.Branch;
import com.idims.mapper.BranchMapper;
import com.idims.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 4:32
 */
@Service
public class BranchServiceImpl implements BranchService {
    @Autowired
    BranchMapper branchMapper;
    @Override
    public Branch getBranchById(Integer branchId) {
        return branchMapper.getBranchById(branchId);
    }

    @Override
    public List<Branch> getAllBranches() {
        return branchMapper.getAllBranches();
    }

    @Override
    public void addBranch(Branch branch) {

    }

    @Override
    public void updateBranch(Branch branch) {
        branchMapper.updateBranch(branch);
    }

    @Override
    public void deleteBranch(int branchId) {

    }
}
