package com.idims.controller;

import com.idims.domain.Employee;
import com.idims.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/21 下午 11:22
 */
@Controller
@RequestMapping("/employees")
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/list")
    public String getAllEmployees(Model model) {
        List<Employee> employees = employeeService.getAllEmployee();
        System.out.println(employees);
        model.addAttribute("employees", employees);
        return "employeeList";  // 返回前端页面名称
    }
}
