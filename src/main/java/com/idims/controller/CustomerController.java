package com.idims.controller;

import com.idims.domain.Customer;
import com.idims.domain.Employee;
import com.idims.service.CustomerService;
import com.idims.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 6:21
 */
@Controller
@RequestMapping("/customers")
public class CustomerController {
    @Autowired
    CustomerService customerService;

    @GetMapping("/list")
    public String getAllCustomers(Model model) {
        List<Customer> customers = customerService.getAllCustomers();
        model.addAttribute("customers", customers);
        return "customerList";
    }

    @PostMapping("/addCus")
    public String addCustomer(Customer customer) {
        customerService.addCustomer(customer);
        return "redirect:/customers/list";
    }

    @PostMapping("/deleteCus")
    public String deleteCustomer(@RequestParam("customerId") Integer customerId) {
        // 根据客户ID执行删除操作，例如调用Service层的方法
        customerService.deleteCustomer(customerId);
        return "redirect:/emp/list"; // 重定向到展示数据的页面
    }

    @PostMapping("/search")
    public String searchCus(@RequestParam("companyName") String name, Model model) {
        List<Customer> customers = customerService.searchCusByName(name);
        model.addAttribute("customers", customers);
        return "customerList";
    }
}
