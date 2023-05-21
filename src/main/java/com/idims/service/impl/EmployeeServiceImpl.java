package com.idims.service.impl;

import com.idims.domain.Employee;
import com.idims.mapper.EmployeeMapper;
import com.idims.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/21 下午 11:16
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    EmployeeMapper employeeMapper;

    @Override
    public List<Employee> getAllEmployee() {
        return employeeMapper.getAllEmployees();
    }

    @Override
    public Integer editEmployee() {
        return null;
    }
}
