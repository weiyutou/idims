package com.idims.service;

import com.idims.domain.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/21 下午 11:14
 */
@Service
public interface EmployeeService {
    // 查询员工信息
    public List<Employee> getAllEmployee();
    //编辑员工信息
    Integer editEmployee();
}
