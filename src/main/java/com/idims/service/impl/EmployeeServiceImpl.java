package com.idims.service.impl;

import com.idims.domain.Employee;
import com.idims.mapper.EmployeeMapper;
import com.idims.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 上午 12:18
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public List<Employee> getAllEmployees() {
        return employeeMapper.getAllEmployees();
    }

    @Override
    public Employee getEmployeeById(Integer employeeId) {
        return employeeMapper.getEmployeeById(employeeId);
    }

    @Override
    public void addEmployee(Employee employee) {
        employeeMapper.addEmployee(employee);
    }

    @Override
    public void updateEmployee(Employee employee) {
        employeeMapper.updateEmployee(employee);
    }

    @Override
    public void deleteEmployee(Integer employeeId) {
        employeeMapper.deleteEmployee(employeeId);
    }

    @Override
    public List<Employee> searchEmployeesByName(String name) {
        return employeeMapper.searchEmployeesByName(name);
    }

}
