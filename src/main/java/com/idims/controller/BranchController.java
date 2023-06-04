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
    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/list")
    public String getAllBranch(Model model){
        List<Branch> branches = branchService.getAllBranches();
        model.addAttribute("branches", branches);
        return "branchList";
    }

    @GetMapping("/editBranche")
    public String editEmployee(@RequestParam("branchId") Integer branchId, Model model) {
        List<Employee> employees = employeeService.getAllEmployees();
        model.addAttribute("employees", employees);
        // 根据员工ID查询公司信息，并将其传递给前端页面
        Branch branches = branchService.getBranchById(branchId);
        model.addAttribute("branches", branches);
        return "editBranch"; // 返回修改页面的视图名称
    }


    @PostMapping("/updateBranch")
    public String updateBranch(@ModelAttribute("branchId") Branch branch) {
        branchService.updateBranch(branch);
        return "redirect:/branches/list";
    }
}
