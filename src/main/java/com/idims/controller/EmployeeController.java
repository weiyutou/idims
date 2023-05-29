package com.idims.controller;

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
@RequestMapping("/emp")
public class EmployeeController {
    /*注入mapper*/
    @Autowired
    EmployeeService employeesService;

    @RequestMapping("/list")
    public String getAllEmployees(Model model) {
        List<Employee> employees = employeesService.getAllEmployees();
        System.out.println(employees);
        model.addAttribute("employees", employees);
        return "employeeList";  // 返回前端页面名称
    }

    @PostMapping("/addEmp")
    public String addEmployees(Employee employee) {
        employeesService.addEmployee(employee);
        return "redirect:/emp/list";
    }
    @PostMapping("/deleteEmp")
    public String deleteEmployee(@RequestParam("employeeID") Integer employeeID) {
        // 根据员工ID执行删除操作，例如调用Service层的方法
        employeesService.deleteEmployee(employeeID);
        return "redirect:/emp/list"; // 重定向到展示数据的页面
    }

    @GetMapping("/editEmp")
    public String editEmployee(@RequestParam("employeeId") Integer employeeId, Model model) {
        // 根据员工ID查询员工信息，并将其传递给前端页面
        Employee employee = employeesService.getEmployeeById(employeeId);
        System.out.println("通过id查找到的"+employee);
        model.addAttribute("employee", employee);

        return "editEmployee"; // 返回修改页面的视图名称
    }
    @PostMapping("/updateEmp")
    public String updateEmployee(@ModelAttribute("employee") Employee employee) {
        employeesService.updateEmployee(employee);
        System.out.println("修改"+employee);
        return "redirect:/emp/list"; // 这里可以重定向到员工列表页面或其他页面
    }

    @PostMapping("/search")
    public String searchEmployees(@RequestParam("name") String name, Model model) {
        List<Employee> employees = employeesService.searchEmployeesByName(name);
        model.addAttribute("employees", employees);
        return "employeeList";
    }

}
