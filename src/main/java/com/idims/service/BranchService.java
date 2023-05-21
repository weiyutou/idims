package com.idims.service;

import com.idims.domain.Branch;
import entity.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.print.Book;
import java.security.PrivateKey;
import java.util.List;


/**
 * @author coli
 * @date 2023/5/17 下午 6:59
 */
@Service
public interface BranchService {
    // 查询分公司信息
    public List<Branch> getAllBranch();
    //编辑分公司信息
    Integer editBranch(Branch branch);
}
