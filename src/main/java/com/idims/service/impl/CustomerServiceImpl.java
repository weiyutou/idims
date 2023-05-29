package com.idims.service.impl;

import com.idims.domain.Customer;
import com.idims.mapper.CustomerMapper;
import com.idims.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 6:19
 */

@Service
public class CustomerServiceImpl implements CustomerService {
    private CustomerMapper customerMapper;

    @Autowired
    public CustomerServiceImpl(CustomerMapper customerMapper) {
        this.customerMapper = customerMapper;
    }

    @Override
    public void addCustomer(Customer customer) {
        customerMapper.addCustomer(customer);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerMapper.updateCustomer(customer);
    }

    @Override
    public void deleteCustomer(int customerId) {
        customerMapper.deleteCustomer(customerId);
    }

    @Override
    public Customer getCustomerById(int customerId) {
        return customerMapper.getCustomerById(customerId);
    }

    @Override
    public List<Customer> getAllCustomers() {
        return customerMapper.getAllCustomers();
    }

    @Override
    public List<Customer> searchCusByName(String name) {
        return customerMapper.searchCusByName(name);
    }
}
