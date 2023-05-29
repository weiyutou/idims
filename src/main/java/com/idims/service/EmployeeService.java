package com.idims.service;

import com.idims.domain.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 上午 12:17
 */
@Service
public interface EmployeeService {
    List<Employee> getAllEmployees();

    Employee getEmployeeById(Integer employeeId);

    void addEmployee(Employee employee);

    void updateEmployee(Employee employee);

    void deleteEmployee(Integer employeeId);

    List<Employee> searchEmployeesByName(String name);
}
