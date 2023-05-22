package com.idims.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.idims.domain.Branch;
import com.idims.mapper.BranchMapper;
import com.idims.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/18 下午 5:18
 */
@Service
public class BranchServiceImpl implements BranchService {
    @Autowired
    BranchMapper branchMapper;

    @Override
    public List<Branch> getAllBranch() {
        List<Branch> list = branchMapper.selectBranch();
        return list;
    }

    @Override
    public Integer editBranch(Branch branch) {
        return null;
    }
}
