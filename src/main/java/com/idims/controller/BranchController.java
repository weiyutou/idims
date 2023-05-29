package com.idims.controller;

import com.idims.domain.Branch;
import com.idims.domain.Employee;
import com.idims.service.BranchService;
import com.idims.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 上午 12:24
 */
@Controller
@RequestMapping("/branches")
public class BranchController {
    @Autowired
    BranchService branchService;

    @RequestMapping("/list")
    public String getAllBranch(Model model){
        List<Branch> branches = branchService.getAllBranches();
        model.addAttribute("branches", branches);
        return "branchList";
    }
}
