package com.idims.service;

import com.idims.domain.Customer;
import com.idims.domain.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 6:16
 */
@Service
public interface CustomerService {
    void addCustomer(Customer customer);
    void updateCustomer(Customer customer);
    void deleteCustomer(int customerId);
    Customer getCustomerById(int customerId);
    List<Customer> getAllCustomers();

    List<Customer> searchCusByName(String name);
}
