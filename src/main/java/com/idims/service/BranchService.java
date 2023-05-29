package com.idims.service;

import com.idims.domain.Branch;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 * @author coli
 * @date 2023/5/28 下午 4:32
 */
@Service
public interface BranchService {
    Branch getBranchById(int branchId);

    List<Branch> getAllBranches();

    void addBranch(Branch branch);

    void updateBranch(Branch branch);

    void deleteBranch(int branchId);
}
